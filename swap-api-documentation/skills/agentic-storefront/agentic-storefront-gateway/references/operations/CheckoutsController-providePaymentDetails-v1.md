# POST /v1/checkouts/{sessionId}/payment-details

**Resource:** [Checkouts](../resources/Checkouts.md)
**Used to provide necessary details for the payment of a transaction**
**Operation ID:** `CheckoutsController_providePaymentDetails_v1`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `sessionId` | path | number | Yes |  |
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [PaymentAdditionalDetailsDto](../schemas/Payment/PaymentAdditionalDetailsDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | The payment transaction has been successfully started. |
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

[PaymentTransactionResponseDto](../schemas/Payment/PaymentTransactionResponseDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
