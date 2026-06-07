# PATCH /v1/checkouts/{sessionId}/discount-code

**Resource:** [Checkouts](../resources/Checkouts.md)
**Apply discount code to checkout session**
**Operation ID:** `CheckoutsController_applyDiscountCode_v1`


      Applies a discount code to a checkout session.
      Returns the updated session with recalculated totals.
    

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `sessionId` | path | number | Yes |  |
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [DiscountCodeDto](../schemas/Discount/DiscountCodeDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | The discount code has been successfully applied with updated totals. |
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

[ApplyDiscountCodeResponseDto](../schemas/Apply/ApplyDiscountCodeResponseDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
