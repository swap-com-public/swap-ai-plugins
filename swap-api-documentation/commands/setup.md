---
name: swap-api-setup
description: One-time wizard to configure API keys for Swap Commerce APIs. Run this before using any Swap API skill.
user_invocable: true
---

# Swap API Setup Wizard

You are running a one-time setup wizard that configures API keys for the Swap Commerce APIs. Work through the steps below in order.

---

## Step 1 — Choose Services to Configure

Present the user with this list and ask which services they want to configure (they can pick one, several, or all):

| # | Service | Available Environments |
|---|---|---|
| 1 | Global API | prod, sandbox |
| 2 | Protect API | prod only |
| 3 | Returns API | prod only |
| 4 | Shipping API | prod, sandbox |
| 5 | TLC API | prod, sandbox |
| 6 | Agentic Storefront | dev, sandbox, prod |

If the user says "all", configure all 6 services.

---

## Step 2 — Locate the Setup Script

Use the Bash tool to find the setup script on the user's machine:

```bash
find ~ -name "setup-keys.sh" -path "*/swap-api-documentation/*" 2>/dev/null | head -1
```

- If found, note the full path — you'll use it in Step 3.
- If not found, ask the user: "Where did you clone or install the swap-ai-plugins-public repo?" then construct the path as `<their path>/swap-api-documentation/setup-keys.sh`.

---

## Step 3 — Hand Off Key Entry to the Script

**Do not ask for API keys directly in chat.** Keys entered in conversation appear in chat history, which is a security risk.

Instead, tell the user:

> "For security, I'll have you enter your API keys in a separate terminal — they'll be collected silently and never appear in the chat.
>
> **Please open a new terminal window and run:**
> ```bash
> bash /PATH/TO/setup-keys.sh
> ```
> *(replace `/PATH/TO/` with the actual path above)*
>
> The script will walk you through each service. Keys are entered silently — nothing will be echoed to the screen. Come back here when the script prints **'Setup complete.'**"

Wait for the user to confirm they've finished running the script before continuing.

---

## Step 4 — Verify

After the user returns, verify the env file was written using the Bash tool:

```bash
test -f ~/.swap-api.env && echo "found" || echo "not found"
```

- **If found:** Proceed to Step 5.
- **If not found:** Tell the user the script may not have completed successfully. Ask if they saw any errors and offer to help debug (common issues: Python 3 not installed, script not found, permissions error on home directory).

---

## Step 5 — Confirm

Tell the user:

> "Setup complete. Your API keys are saved as environment variables in `~/.swap-api.env` (file permissions 600 — readable only by you). Nothing else on your system was modified.
>
> I'll source this file inline before each API call, so the raw key values never appear in our chat — only the variable names do. You can now use any Swap API skill — just tell me what you want to do and which environment (prod or sandbox). To reconfigure a service later, run `/swap-api-setup` again."

Then list the available per-service commands so the user knows they exist:

> **Per-service commands** (scope your session to one API):
> - `/swap-tlc` — Duties, taxes & fees for cross-border shipments
> - `/swap-global` — Cross-border checkout (calculate, classify, complete)
> - `/swap-protect` — Package protection orders & claims
> - `/swap-returns` — External returns & quality control
> - `/swap-shipping` — Shipping invoices
> - `/swap-storefront` — Agentic storefront (products, orders, carts, checkouts, and more)


---

## Step 6 — Enable Auto-Update (Optional)

Ask the user:

> "Would you like to enable automatic updates for this plugin? When enabled, Claude Code will pull the latest skills from GitHub automatically on startup."

**If the user says yes:**

Tell the user:

> "Claude Code has a built-in auto-update feature for plugins. Here's how to enable it:"
>
> 1. Run `/plugin` in Claude Code to open the Plugin Manager.
> 2. Go to the **Marketplaces** tab.
> 3. Find the `swap-api-documentation` marketplace entry.
> 4. Select **Enable auto-update**.
>
> Once enabled, Claude Code will check for and apply updates on startup. If an update is downloaded, you'll see a prompt to run `/reload-plugins` to activate it.

**If the user says no or skips:**

> "No problem. To update manually at any time, run `/plugin`, go to the **Marketplaces** tab, find `swap-api-documentation`, and choose **Update**. Or run `git pull` directly inside your `swap-ai-plugins-public` directory."
