# PATCH /v1/checkouts/{sessionId}/shipping-address

**Resource:** [Checkouts](../resources/Checkouts.md)
**Update checkout session shipping address**
**Operation ID:** `CheckoutsController_updateCheckoutSessionAddress_v1`


      Updates the shipping address for an express checkout session.
      Returns the updated session with recalculated totals based on the new shipping address.
    

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `sessionId` | path | number | Yes |  |
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [SetAddressDto](../schemas/Set/SetAddressDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | The checkout session shipping address has been successfully updated with new totals. |
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

[CheckoutSessionDto](../schemas/Checkout/CheckoutSessionDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
