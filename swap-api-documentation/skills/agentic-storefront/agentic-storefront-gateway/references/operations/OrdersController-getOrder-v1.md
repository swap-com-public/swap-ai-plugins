# GET /v1/orders/{orderId}

**Resource:** [Orders](../resources/Orders.md)
**Get an order with full details**
**Operation ID:** `OrdersController_getOrder_v1`

Get an order with full details by ID for a user in a specific store

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `orderId` | path | number | Yes |  |
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

[OrderDetailsResponseDto](../schemas/Order/OrderDetailsResponseDto.md)

## Security

- **BearerAuth**
