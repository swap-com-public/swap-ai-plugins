# swap-api

Call any Swap Commerce API from your AI tool — with sandbox/prod routing and API key management.

## Install (customers)

```
claude plugin marketplace add swapcommerce/swap-ai-plugin-public
claude plugin install swap-api-documentation@swap-ai-plugin-public
```

Then run the setup wizard once:

```
/swap-api-setup
```

You can enter keys directly or reference env vars (e.g. `$SWAP_TLC_KEY`). After that, just describe what you want:

> "Get all returns for store X using sandbox"
> "Calculate duties for this shipment via TLC prod"

---

## Developer Guide

### How the plugin is structured

```
commands/setup.md          ← /swap-api-setup wizard (customer runs once)
commands/swap-tlc.md       ← /swap-tlc  — TLC API entry point
commands/swap-global.md    ← /swap-global  — Global API entry point
commands/swap-protect.md   ← /swap-protect  — Protect API entry point
commands/swap-returns.md   ← /swap-returns  — Returns API entry point
commands/swap-shipping.md  ← /swap-shipping  — Shipping API entry point
commands/swap-storefront.md ← /swap-storefront  — Agentic Storefront entry point
skills/                    ← generated from OpenAPI specs, committed to repo
```

Per-service commands follow a three-step pattern: auth check → dynamic operation discovery (reads skill files at runtime, never hard-codes operations) → guided execution. This means they stay correct automatically when skills are regenerated.

Auth behavior (sourcing `~/.swap-api.env`, resolving env vars, prompting setup if missing) is embedded in each skill's `references/authentication.md`, so it works in all AI tools and not just Claude Code. Keys are written to that file by `setup-keys.sh`, which collects them silently in a separate terminal so they never appear in chat.

### Adding a new service

Skills are auto-generated from OpenAPI specs. Adding a new service is done via the internal documentation repo.

### Why skills/ is committed to the repo

Customers install the plugin and get the skills immediately — they don't run the generator. The generated files are build output that we commit, similar to a compiled bundle.
