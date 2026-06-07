# Authentication

## How to authenticate

**If the user provides an API key directly in their message**, use it for this call and skip the config file.

**Otherwise**, read `~/.swap-api.json` and look up `["tlc"][environment]` to get the headers object. If any value starts with `$`, resolve it from that environment variable at call time.

If the file does not exist or the entry is missing, tell the user:
> "You haven't configured API keys for this service yet. Run `/swap-api-setup` to set them up, then try again."
Stop — do not attempt the call.

**Environment**: If the user hasn't specified an environment, ask before proceeding. Never silently default to prod.
Available environments: prod, sandbox

## Header

**Type:** apiKey

- **In:** header
- **Name:** x-api-key
- **Config path:** `~/.swap-api.json` → `tlc` → environment → `x-api-key`
