# GET /orders/{orderId}

**Resource:** [orders](../resources/orders.md)
**Get Order By ID**
**Operation ID:** `getOrderById`

Retrieve an order scoped to the provider inferred from the API key.

## Responses

| Status | Description |
|--------|-------------|
| 200 | Order retrieved successfully. |
| 401 | Unauthorized |
| 404 | Not Found |
| 500 | Internal Server Error |

