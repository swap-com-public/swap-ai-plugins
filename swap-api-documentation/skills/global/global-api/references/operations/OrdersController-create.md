# POST /public/v1/orders

**Resource:** [Public](../resources/Public.md)
**POST /orders**
**Operation ID:** `OrdersController_create`

Notifies Swap that an order has been placed.

Once a customer completes payment, send the finalised order details to Swap. This powers **billing, the Swap dashboard, tax nexus tracking, and reporting**. Pass the `calculationId` returned from [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) to link the order back to its tax calculation.

This is **Step 4 — Complete** in the Swap Global checkout flow: **[Classify](/products/global/global-reference/checkout-controller-classify/) → [optional Shipping rates](/products/global/global-reference/shipping-public-controller-calculate-rates/) → [Calculate](/products/global/global-reference/checkout-controller-calculate/) → Complete**. See the [Checkout Flow](/products/global/checkout-flow) guide for the conceptual walkthrough.

:::danger Items must match the linked calculation
The `items` list in this request must be identical to the one sent to the linked [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/) call. Each item's `id` and `quantity` must match. If they do not, the endpoint returns **422** with an `items_mismatch_calculation` message that identifies the offending entries.
:::

:::warning Currency Requirements
All **monetary values** sent must use your **store's base currency**<br/>
For example, if your store is based in the UK, send amounts in **GBP**.
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
| 422 | Item-set mismatch between order and referenced calculation (items_mismatch_calculation) |
| 500 | Internal server error |
| 503 | Feature disabled or dependency unavailable |

**Success Response Schema:**

[CreateOrderResponseDto](../schemas/Create/CreateOrderResponseDto.md)

## Security

- **X-Api-Key**
