# GET /public/v1/orders/{orderId}

**Resource:** [Public](../resources/Public.md)
**GET /orders/:orderId**
**Operation ID:** `OrdersController_getById`

Returns a single order for the store authenticated by your API key.

Use this to look up an order after it has been created — for example to check status, destination, items, or totals. List orders with [`GET /orders`](/products/global/global-reference/orders-controller-list/). Create orders with [`POST /orders`](/products/global/global-reference/orders-controller-create/).

**Call it when:** You need the full details of one order by its Swap order id.

:::info Authentication
Authenticate with the `X-Api-Key` header. The store is inferred from the key; you do not pass a `storeId`.
:::

:::info Not found
If the order does not exist, or belongs to a different store, the response is **404** with `Order not found: <orderId>`. The API does not distinguish a missing order from one owned by another store.
:::

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `orderId` | path | string | Yes |  |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Order details for the authenticated store |
| 401 | Missing or invalid API key |
| 404 | Order not found — the id does not exist or belongs to another store |
| 500 | Internal server error |

**Success Response Schema:**

[GetOrderResponseDto](../schemas/Get/GetOrderResponseDto.md)

## Security

- **X-Api-Key**
