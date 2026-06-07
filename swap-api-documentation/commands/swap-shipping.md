---
name: swap-shipping
description: Work with the Swap Shipping API — retrieve and manage shipping invoices. Guides you through auth check, operation discovery, and execution.
user_invocable: true
---

# Swap Shipping API

API for retrieving and managing shipping invoices.

## Step 1 — Auth Check

Source `~/.swap-api.env` and check that at least one Shipping key is set. Run this in a single Bash call:

```bash
source ~/.swap-api.env 2>/dev/null
[ -n "${SWAP_SHIPPING_PROD_API_KEY:-}" ] && echo "prod: configured"
[ -n "${SWAP_SHIPPING_SANDBOX_API_KEY:-}" ] && echo "sandbox: configured"
```

If neither echoes "configured", display this exact message verbatim:
> "You haven't configured API keys for the Shipping service yet. Run `/swap-api-setup` to set them up, then try again."

Then stop — do not continue.

Find the single subdirectory inside `skills/shipping/` — this is the skill directory. Read its `references/authentication.md` for the header name and any operation-specific auth notes. Do not hard-code or assume — always derive from that file.

Do not ask for the environment yet — wait until the user has chosen an operation.

## Step 2 — Discover Operations

Never list operations from memory — always derive them by reading the resource files.

Using the skill directory found in Step 1:

1. Read its `SKILL.md` — find the **Resources** section to get the list of resource files.
2. For each resource listed, read the corresponding `references/resources/<resource>.md`.
3. Build and present a numbered menu to the user from what you find there:

   > **Swap Shipping API — Available Operations**
   > (numbered list with method, path, and summary for each operation)

4. Ask: "Which operation would you like to perform? And which environment?" (list the environments from authentication.md)

## Step 3 — Execute

Once the user has chosen an operation and environment:

1. Read `references/operations/<operation-file>.md` in the skill directory for full request/response details.
2. Collect any required inputs the user hasn't yet provided.
3. Make the API call following the **Authentication usage rule** below.

## Authentication usage rule

When making the API call:

1. Prefix the curl command with `source ~/.swap-api.env` in the **same Bash invocation** (chained with `&&`).
2. Pass the variable *name* (not the value) into the header: `-H "x-api-key: $SWAP_SHIPPING_PROD_API_KEY"` (or `$SWAP_SHIPPING_SANDBOX_API_KEY` for sandbox).
3. **Do not** look up the variable's value yourself and inline it — that would leak the raw key into the conversation transcript.

The shell expands `$SWAP_SHIPPING_PROD_API_KEY` at execution time. The variable *name* — not the value — is what appears in the transcript.
