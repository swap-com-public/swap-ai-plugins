# GET /v1/orders

**Resource:** [Orders](../resources/Orders.md)
**List orders for a user in a specific store**
**Operation ID:** `OrdersController_listOrders_v1`

List orders for a user in a specific store with pagination and optional status filtering

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `limit` | query | number | No | The page size limit of the orders. Used for pagination. Default is 20. |
| `offset` | query | number | No | The offset of the orders. Used for pagination. Default is 0. |
| `status` | query | enum: pending, paid, fulfilled... | No | The status of the orders. Used for filtering. Default is all statuses. |
| `x-store-id` | header | string | Yes | Store identifier. |

## Responses

| Status | Description |
|--------|-------------|
| 200 |  |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |
| 503 | Service Unavailable — dependency unavailable (e.g. cart/checkout upstream). |

**Success Response Schema:**

[GetOrdersResponseDto](../schemas/Get/GetOrdersResponseDto.md)

## Security

- **BearerAuth**
