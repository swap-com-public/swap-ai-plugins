# POST /orders

**Resource:** [orders](../resources/orders.md)
**Create Order**
**Operation ID:** `createOrder`

Validate and enqueue a new order for processing. Provider/store/origin compatibility is enforced from the API key context.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [OrderRequest](../schemas/Order/OrderRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Order accepted and queued. |
| 400 | Bad Request |
| 401 | Unauthorized |
| 500 | Internal Server Error |

