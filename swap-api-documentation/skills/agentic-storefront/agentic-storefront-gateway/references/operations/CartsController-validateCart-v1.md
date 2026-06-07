# POST /v1/carts/validate

**Resource:** [Carts](../resources/Carts.md)
**Validate and refresh cart**
**Operation ID:** `CartsController_validateCart_v1`

Validates cart items against Shopify and updates prices, availability, and quantities. Returns previous and current cart state for comparison.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | Yes | Store identifier. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | The cart has been validated and updated. |
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

[ValidateCartResponseDto](../schemas/Validate/ValidateCartResponseDto.md)

## Security

- **BearerAuth**
