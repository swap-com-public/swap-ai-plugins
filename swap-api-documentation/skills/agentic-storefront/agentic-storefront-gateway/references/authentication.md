# Authentication

## How to authenticate

**If the user provides a Bearer token directly in their message**, use it for this call and skip the config file.

**Otherwise**, read `~/.swap-api.json` and look up `["agentic-storefront"][environment]` to get the headers object. If any value starts with `$`, resolve it from that environment variable at call time.

If the file does not exist or the entry is missing, tell the user:
> "You haven't configured API keys for Agentic Storefront yet. Run `/swap-api-setup` to set them up, then try again."
Stop — do not attempt the call.

**Environment**: If the user hasn't specified an environment, ask before proceeding. Never silently default to prod.
Available environments: dev, sandbox, prod

## Headers

### Authorization (required)

- **In:** header
- **Name:** `Authorization`
- **Format:** `Authorization: Bearer <token>`
- **Config path:** `~/.swap-api.json` → `agentic-storefront` → environment → `Authorization`

### x-public-key (optional)

- **In:** header
- **Name:** `x-public-key`
- Only required for checkout and session endpoints.
- **Config path:** `~/.swap-api.json` → `agentic-storefront` → environment → `x-public-key`

### x-store-id (required for most endpoints)

- **In:** header
- **Name:** `x-store-id`
- Ask the user for their store ID if not already provided.
