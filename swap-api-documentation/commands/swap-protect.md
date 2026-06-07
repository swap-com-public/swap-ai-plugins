---
name: swap-protect
description: Work with the Swap Protect API — manage protection orders and claims. Guides you through auth check, operation discovery, and execution.
user_invocable: true
---

# Swap Protect API

API for managing package protection orders and claims.

## Step 1 — Auth Check

Source `~/.swap-api.env` and check that the Protect key is set. Run this in a single Bash call:

```bash
source ~/.swap-api.env 2>/dev/null
[ -n "${SWAP_PROTECT_PROD_API_KEY:-}" ] && echo "prod: configured"
```

If nothing echoes "configured", display this exact message verbatim:
> "You haven't configured API keys for the Protect service yet. Run `/swap-api-setup` to set them up, then try again."

Then stop — do not continue.

Find the single subdirectory inside `skills/protect/` — this is the skill directory. Read its `references/authentication.md` for the header name and any operation-specific auth notes. Do not hard-code or assume — always derive from that file.

Do not ask for the environment yet — wait until the user has chosen an operation.

## Step 2 — Discover Operations

Never list operations from memory — always derive them by reading the resource files.

Using the skill directory found in Step 1:

1. Read its `SKILL.md` — find the **Resources** section to get the list of resource files.
2. For each resource listed, read the corresponding `references/resources/<resource>.md`.
3. Build and present a numbered menu to the user from what you find there:

   > **Swap Protect API — Available Operations**
   > (numbered list with method, path, and summary for each operation)

4. Always ask: "Which operation would you like to perform?" If more than one environment is listed in authentication.md, also ask which environment to use. If only one environment is available, select it automatically without asking.

## Step 3 — Execute

Once the operation and environment are confirmed:

1. Read `references/operations/<operation-file>.md` in the skill directory for full request/response details.
2. Collect any required inputs the user hasn't yet provided.
3. Make the API call following the **Authentication usage rule** below.

## Authentication usage rule

When making the API call:

1. Prefix the curl command with `source ~/.swap-api.env` in the **same Bash invocation** (chained with `&&`).
2. Pass the variable *name* (not the value) into the header: `-H "x-api-key: $SWAP_PROTECT_PROD_API_KEY"`.
3. **Do not** look up the variable's value yourself and inline it — that would leak the raw key into the conversation transcript.

The shell expands `$SWAP_PROTECT_PROD_API_KEY` at execution time. The variable *name* — not the value — is what appears in the transcript.
