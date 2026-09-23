# POST /public/v1/orders

**Resource:** [Public](../resources/Public.md)
**POST /orders**
**Operation ID:** `OrdersController_create`

Notifies Swap that an order has been placed.

Once a customer completes payment, send the finalised order details to Swap. This powers **billing, the Swap dashboard, tax nexus tracking, and reporting**. Pass the `calculationId` returned from [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) to link the order back to its tax calculation.

This is **Step 4 — Complete** in the Swap Global checkout flow: **[Classify](/products/global/global-reference/checkout-controller-classify/) → [optional Shipping rates](/products/global/global-reference/shipping-public-controller-calculate-rates/) → [Calculate](/products/global/global-reference/checkout-controller-calculate/) → Complete**. See the [Checkout Flow](/products/global/checkout-flow) guide for the conceptual walkthrough.

:::danger Items must match the linked calculation
The `lineItems` list in this request must cover exactly the same items as the one sent to the linked [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) call — the same `id` values, the same number of times. If they do not, the endpoint returns **422** with an `items_mismatch_calculation` message that identifies the offending entries.

Quantities are **not** sent here: each item's quantity is taken from the linked calculation, which is what the tax figures were calculated over.
:::

:::danger Destination country must match the linked calculation
`destinationAddress.countryCode` must be the destination country you sent to the linked [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) call. Every duty, tax, and trade-agreement figure on the order was calculated for that country, so a different one is rejected with **422** and an `address_mismatch_calculation` message. If the customer changes their shipping country after calculating, calculate again for the new destination and link that calculation instead.

`provinceCode` and `postalCode` are **not** rejected when they differ, but the order still records tax that was calculated for the province and postal code you sent to calculate.
:::

:::warning Currency Requirements
This request does **not** take a `currency`. The order is recorded in the currency you declared on the linked [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) call — that is where the currency for the whole checkout is set. All **monetary values** sent here must therefore use that same currency, which is your **store's base currency**<br/>
For example, if your store is based in the UK, send amounts in **GBP**.
:::

:::warning Shipping amount
`shipping.rateAmount` is the shipping amount recorded on the order — what you actually charged the customer. Shipping taxes and duties, however, were calculated over the `shippingValue` you sent to [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/). Send the same amount in both places: if they differ, the order records shipping tax that was calculated on a different amount, and if you omitted `shippingValue` at calculate time no shipping tax was calculated at all.
:::

**Call it when:** An order is confirmed and payment has been captured.

:::info Orders are immutable
Once an order has been created for a given `(storeId, platformOrderId)` pair, later calls—including Shopify-webhook-driven creation attempts—return the existing record with `status: "Exists"`. Swap does not replace the calculation context on duplicate completion attempts.
:::

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [CreateOrderRequestDto](../schemas/Create/CreateOrderRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 201 | Order creation tracked successfully |
| 400 | Invalid request body or missing required fields |
| 401 | Missing or invalid API key |
| 409 | Duplicate order — already tracked |
| 422 | Item-set mismatch (items_mismatch_calculation) or destination-country mismatch (address_mismatch_calculation) between order and referenced calculation |
| 500 | Internal server error |
| 503 | Feature disabled or dependency unavailable |

**Success Response Schema:**

[CreateOrderResponseDto](../schemas/Create/CreateOrderResponseDto.md)

## Security

- **X-Api-Key**
