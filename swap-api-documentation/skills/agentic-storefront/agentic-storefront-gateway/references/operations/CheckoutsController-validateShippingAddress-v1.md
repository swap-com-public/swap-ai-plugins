# POST /v1/checkouts/{sessionId}/shipping-address/validate

**Resource:** [Checkouts](../resources/Checkouts.md)
**Validate a shipping address**
**Operation ID:** `CheckoutsController_validateShippingAddress_v1`


      Validates a shipping address without updating a checkout session.
      Returns validation result indicating if the address is valid and any error messages.
    

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `sessionId` | path | number | Yes |  |
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [AddressDto](../schemas/Address/AddressDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | The shipping address has been successfully validated. |
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

[ValidateShippingAddressResponseDto](../schemas/Validate/ValidateShippingAddressResponseDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
