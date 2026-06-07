# PUT /orders

**Resource:** [orders](../resources/orders.md)
**Update Order**
**Operation ID:** `updateOrder`

Validate and enqueue an order update for processing. Provider/store/origin compatibility is enforced from the API key context.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [OrderRequest](../schemas/Order/OrderRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Order update accepted and queued. |
| 400 | Bad Request |
| 401 | Unauthorized |
| 500 | Internal Server Error |

