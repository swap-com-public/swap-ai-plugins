# POST /public/v1/checkout/recalculate

**Resource:** [Public](../resources/Public.md)
**POST /checkout/recalculate**
**Operation ID:** `CheckoutController_recalculate`

Re-issues a tax and duty calculation for all — or a subset — of the items on an existing calculation, without re-resolving prices through your store's pricing configuration.

You pass the `calculationId` of a previous [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) response, and optionally an `items` list to keep only some of the original items (and/or reduce their quantities) plus a new `shippingValue`. Swap replays the **frozen prices and pricing strategy** captured on the original calculation and re-runs only the tax engine, returning the same response shape as `/checkout/calculate` — including a **new** `calculationId` that links to the eventual `/orders` call. The source calculation is left untouched and remains independently usable.

:::info When to use recalculate vs. calculate
Use `/checkout/recalculate` when a shopper removes items from, or reduces quantities on, a cart you already calculated and you want the item prices held stable. Use [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) for a brand-new cart, or whenever you want prices re-resolved against current store configuration.
:::

**Request fields**

- `calculationId` **(required)** — the id returned by a previous `/checkout/calculate`.
- `items` *(optional)* — the subset to keep, each `{ id, quantity? }`. Omit (or send an empty array) to replay every original item at its original quantity. Every `id` must belong to the source calculation; unknown ids return **400**. Omit `quantity` to reuse the original. A supplied `quantity` may only be **lower than or equal to** the source quantity — recalculation can shrink an order but never increase a line's quantity; a higher value returns **400**.
- `shippingValue` *(optional)* — recompute shipping tax on this amount. Omit to reuse the source calculation's shipping.

:::warning Latest tax rates, frozen prices
Recalculate replays the **point-in-time prices and pricing strategy** from the source calculation, but uses the **latest** tax and duty rates from the tax provider — so results can move slightly from the original even with no item changes. Quantity-dependent or volume-tiered pricing is **not** re-resolved; the original per-unit prices are reused as-is.
:::

**Call it when:** A shopper changes an already-calculated cart (removes items or reduces quantities) and you want to refresh taxes and duties while keeping the originally-quoted item prices.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [RecalculateRequestDto](../schemas/Recalculate/RecalculateRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 201 | Tax recalculation result |
| 400 | Request body validation errors, or an item id that is not part of the source calculation |
| 401 | Missing or invalid API key |
| 500 | Internal server error |
| 502 | External tax service failure |
| 503 | Feature disabled |

**Success Response Schema:**

[PublicCalculateResponseDto](../schemas/Public/PublicCalculateResponseDto.md)

## Security

- **X-Api-Key**
