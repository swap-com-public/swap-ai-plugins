# POST /public/v1/checkout/calculate

**Resource:** [Public](../resources/Public.md)
**POST /checkout/calculate**
**Operation ID:** `CheckoutController_calculate`

Calculates taxes and duties for a checkout.

You pass the cart items (with HS codes and monetary amounts in your store's base currency), the origin and destination addresses, and an optional `shippingValue`. Swap returns a full tax and duty breakdown per item, per shipping line, and as order totals — plus a `calculationId` that links this calculation to the eventual `/orders` call.

Pass `shippingValue` when you want taxes and duties calculated on shipping. Supply the amount yourself if you manage shipping outside Swap, or pass the `amount` from the rate the shopper selected after calling [`/shipping/rates`](/products/global/global-reference/shipping-public-controller-calculate-rates/). Call `/checkout/calculate` again whenever the shopper selects or changes a shipping option so totals stay in sync.

This is the **calculate** step in the Swap Global checkout flow: **[Classify](/products/global/global-reference/checkout-controller-classify/) → [optional Shipping rates](/products/global/global-reference/shipping-public-controller-calculate-rates/) → Calculate → [Complete](/products/global/global-reference/orders-controller-create/)**. See the [Checkout Flow](/products/global/checkout-flow) guide for the conceptual walkthrough.

**Every taxable item must include an `hsCode`.** To obtain HS codes for your products, call [`/checkout/classify`](/products/global/global-reference/checkout-controller-classify/) first.

:::info Non-taxable items
Set `isTaxable: false` on items that should not be taxed at all — gift cards, digital goods, and similar. Do **not** send a zero price to achieve this: send the real price with `isTaxable: false`. Non-taxable items may omit `classificationInfo` entirely (both `hsCode` and `countryCodeOfOrigin`), are returned with a zero tax and duty breakdown, and still count towards the transaction `subtotal` and `total`. `isTaxable` defaults to `true` when omitted.
:::

:::danger Invalid HS codes
If an item's `hsCode` is invalid and cannot be resolved at calculate time, the endpoint returns **400** with a `message` (not a partial tax breakdown). The message lists the affected item `id` values and directs you to call [`/checkout/classify`](/products/global/global-reference/checkout-controller-classify/) to obtain valid HS codes, then retry `/checkout/calculate` with the updated values. No `calculationId` is created for these requests.
:::

:::info Item IDs must be stable across stages
The `id` you send for each item must match the one used in `/checkout/classify`, `/shipping/rates`, `/checkout/calculate`, and `/orders`. If you use Shopify as your inventory source of truth, use the **`variant_id`** as the item id.
:::

:::warning Item IDs must be unique
Unlike [`/checkout/classify`](/products/global/global-reference/checkout-controller-classify/), which accepts duplicate items when all their fields are identical, every `id` in the `items` array here must be **unique** — a duplicate returns **400**. Send one entry per item and use `quantity` to express how many were bought; the `calculationId` this call returns is later matched to your order by item id.
:::

:::warning Currency Requirements
All **monetary values** sent (prices, fees, shipping, and similar fields) must use your **store's base currency**<br/>
For example, if your store is based in the UK, send amounts in **GBP**.

The `currency` you send here governs the whole chain: the calculation is returned in it, and the order created from this calculation via [`/orders`](/products/global/global-reference/orders-controller-create/) is recorded in it. `/orders` does not take a `currency` of its own.
:::

**Call it when:** A customer reaches checkout and you need to display tax and duty amounts before payment — including after the shopper selects or changes a shipping option.

**Pricing-zone strategy flags.** Each returned item carries two independent booleans describing how the item was priced: `includedTaxes` (VAT is baked into the product price) and `includedDuties` (duties are baked in). Together they encode the four pricing strategies:

| `includedTaxes` | `includedDuties` | Strategy |
| --- | --- | --- |
| false | false | Tax-exclusive (Checkout) |
| true | false | VAT-inclusive |
| false | true | Duties-inclusive |
| true | true | Taxes-and-duties-inclusive |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [CalculateRequestDto](../schemas/Calculate/CalculateRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 201 | Tax calculation result |
| 400 | Request body validation errors (`message`: `Validation failed` with field-level `errors`), or invalid HS codes (`message` lists affected item ids and references `/checkout/classify`; no `calculationId` is returned) |
| 401 | Missing or invalid API key |
| 500 | Internal server error |
| 502 | External tax service failure |
| 503 | Feature disabled |

**Success Response Schema:**

[PublicCalculateResponseDto](../schemas/Public/PublicCalculateResponseDto.md)

## Security

- **X-Api-Key**
