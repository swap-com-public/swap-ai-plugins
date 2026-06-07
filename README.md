# Swap Commerce AI Plugin

Call any Swap Commerce API directly from your AI coding environment using [Claude Code](https://claude.ai/code).

<br/>

## Supported APIs

| Command | API | Description |
|---------|-----|-------------|
| `/swap-global` | Global | Calculate cross-border costs, classify items, and complete checkout flows |
| `/swap-protect` | Protect | Manage protection orders and claims |
| `/swap-returns` | Returns | Manage external returns and quality control |
| `/swap-shipping` | Shipping | Retrieve and manage shipping invoices |
| `/swap-tlc` | TLC | Calculate duties, taxes, and fees for cross-border shipments |
| `/swap-storefront` | Agentic Storefront | Manage products, orders, carts, checkouts, and conversations |

<br/>

## Install

### 1. Add the marketplace

```bash
claude plugin marketplace add swap-com-public/swap-ai-plugins
```

### 2. Install the plugin

```bash
claude plugin install swap-api-documentation@swap-ai-plugin-public
```

### 3. Run the setup wizard (once)

```
/swap-api-setup
```

Enter your API keys when prompted. You can type them directly or reference environment variables (e.g. `$SWAP_TLC_KEY`).

<br/>

## Usage

After setup, just describe what you want in Claude Code:

- "Get all returns for store X using sandbox"
- "Calculate duties for this shipment via TLC prod"
- "List open protection claims for the last 7 days"

Each `/swap-*` command guides you through auth, operation discovery, and execution automatically.

<br/>

## Documentation

Full API reference and guides: [docs.api-swap-os.com](https://docs.api-swap-os.com/)
