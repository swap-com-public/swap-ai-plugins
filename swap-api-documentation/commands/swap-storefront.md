---
name: swap-storefront
description: Work with the Swap Agentic Storefront API — manage products, orders, carts, checkouts, conversations, and more. Guides you through auth check, operation discovery, and execution.
user_invocable: true
---

# Swap Agentic Storefront API

API for agentic storefront operations — products, orders, carts, checkouts, shipments, conversations, and more.

## Step 1 — Auth Check

Source `~/.swap-api.env` and check that at least one Storefront Bearer token is set. Run this in a single Bash call:

```bash
source ~/.swap-api.env 2>/dev/null
[ -n "${SWAP_STOREFRONT_PROD_BEARER:-}" ]    && echo "prod: configured"
[ -n "${SWAP_STOREFRONT_SANDBOX_BEARER:-}" ] && echo "sandbox: configured"
[ -n "${SWAP_STOREFRONT_DEV_BEARER:-}" ]     && echo "dev: configured"
```

If nothing echoes "configured", display this exact message verbatim:
> "You haven't configured credentials for the Agentic Storefront yet. Run `/swap-api-setup` to set them up, then try again."

Then stop — do not continue.

Find the single subdirectory inside `skills/agentic-storefront/` — this is the skill directory. Read its `references/authentication.md` for the header names and any special requirements (e.g. store ID, public key for checkout/session endpoints).

Do not ask for the environment yet — wait until the user has chosen an operation.

## Step 2 — Collect Store ID

Ask the user for their store ID (`x-store-id`) now, before showing operations. It is required by most endpoints in this API, so collecting it upfront avoids interrupting execution later. If the user has already provided it in this session, skip asking.

Do not ask for other headers (like `x-public-key`) at this stage — those are conditional and will be applied at execution time per the rules in `authentication.md`.

## Step 3 — Discover Operations

Never list operations from memory — always derive them by reading the resource files.

Using the skill directory found in Step 1:

1. Read its `SKILL.md` — find the **Resources** section to get the list of resource files.
2. For each resource listed, read the corresponding `references/resources/<resource>.md`.
3. Build and present a numbered menu grouped by resource to the user from what you find there:

   > **Swap Agentic Storefront API — Available Operations**
   > (numbered list grouped by resource, with method, path, and summary for each operation)

4. Ask: "Which operation would you like to perform? And which environment?" (list the environments from authentication.md)

## Step 4 — Execute

Once the user has chosen an operation and environment:

1. Read `references/operations/<operation-file>.md` in the skill directory for full request/response details.
2. Collect any required inputs the user hasn't yet provided.
3. Make the API call following the **Authentication usage rule** below.

## Authentication usage rule

When making the API call:

1. Prefix the curl command with `source ~/.swap-api.env` in the **same Bash invocation** (chained with `&&`).
2. Pass the variable *names* (not values) into the headers:
   - `-H "Authorization: Bearer $SWAP_STOREFRONT_PROD_BEARER"` (or `$SWAP_STOREFRONT_SANDBOX_BEARER` / `$SWAP_STOREFRONT_DEV_BEARER`).
   - For checkout / session endpoints that need a public key, also: `-H "x-public-key: $SWAP_STOREFRONT_PROD_PUBLIC_KEY"` (only available for prod by default).
   - `x-store-id` is collected from the user in Step 2 — pass that value directly (it is not a secret).
3. **Do not** look up the Bearer or public-key value yourself and inline it — that would leak the raw credential into the conversation transcript.

Example single Bash call (prod checkout endpoint):

```bash
source ~/.swap-api.env && \
  curl -sS -H "Authorization: Bearer $SWAP_STOREFRONT_PROD_BEARER" \
          -H "x-public-key: $SWAP_STOREFRONT_PROD_PUBLIC_KEY" \
          -H "x-store-id: <user-provided-store-id>" \
          -H "Content-Type: application/json" \
          https://prod-ws-gateway.api-swap-os.com/...
```

The shell expands the variables at execution time. Only the variable *names* — not the values — appear in the transcript.
