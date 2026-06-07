# GET /v1/checkouts/{sessionId}

**Resource:** [Checkouts](../resources/Checkouts.md)
**Get a checkout session**
**Operation ID:** `CheckoutsController_getCheckoutSession_v1`


      Retrieves a checkout session for a specified user and store.
      Does not return the payment session data.
      Does not contain sensitive data such as shipping or billing address or payment details.
    

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `sessionId` | path | number | Yes |  |
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | The checkout session has been successfully retrieved. |
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

[CheckoutSessionWithShippingRateConfigsDto](../schemas/Checkout/CheckoutSessionWithShippingRateConfigsDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
