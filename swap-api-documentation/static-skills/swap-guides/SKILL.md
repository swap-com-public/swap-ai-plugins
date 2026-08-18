---
name: swap-guides
description: Conceptual, architecture, and getting-started guidance for the Swap platform and its products — including "what does X do", "how does X work", and "what's the difference between X and Y" for any two or more Swap products (Global, TLC, Shipping, Returns, Protect, Agentic Storefront). Use this even when the question names specific products, as long as it's not about calling one specific operation on one of them. For a specific API operation/endpoint, use that product's own skill instead (swap-shipping-api, swap-tlc-api, global-api, swap-protect-api, swap-returns-api, agentic-storefront-gateway).
---

# Swap Guides

Conceptual documentation for the Swap platform, fetched live from https://docs.api-swap-os.com — this skill has no baked-in content.

## Before fetching anything

The per-product API skills (`swap-shipping-api`, `global-api`, etc.) only contain endpoint-level reference — request/response shapes, params, auth. They have **no conceptual or comparative content**: no explanation of what a product is for, how it differs from another, or how they relate. Don't rely on them, and don't infer an answer from endpoint names/shapes — fetch the real docs instead, even if the question happens to name one or more specific products.

Only defer to a per-product skill instead of this one when the question is actually about calling/using a specific operation on that product.

## How to answer

Fetch with `curl -A "Mozilla/5.0" <url>` — always include that User-Agent, from the first request. This host rejects non-browser clients, so skipping it just means an extra failed round-trip before retrying.

1. `curl -A "Mozilla/5.0" https://docs.api-swap-os.com/llms.txt` — a link index of every doc page, grouped by section (`## overview`, `## quickstart`, `## products` with a subsection per product, etc.), each entry formatted as `- [Title](/path/to/page.md): description`.
2. Find the entry whose title/description best matches the question and note its exact `.md` path.
3. `curl -A "Mozilla/5.0" https://docs.api-swap-os.com<path>` — the exact path from the link. Never guess a URL.
4. Answer from that page's content.

If nothing in `llms.txt` matches the question, say so rather than guessing.
