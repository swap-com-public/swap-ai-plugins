# POST /v1/checkouts

**Resource:** [Checkouts](../resources/Checkouts.md)
**Initiate a checkout session**
**Operation ID:** `CheckoutsController_createCheckoutSession_v1`


      Creates a checkout session for a specified store and user. 
      This process creates a new order based on the current cart, 
      reserves the selected items, and generates a checkout session associated with the user.

      The endpoint returns all necessary data for initializing the Adyen Checkout Component on the frontend.
    

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | Yes | Store identifier. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [CreateCheckoutSessionRequestDto](../schemas/Create/CreateCheckoutSessionRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 201 | The checkout session has been successfully created. |
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

[CreateCheckoutSessionResponseDto](../schemas/Create/CreateCheckoutSessionResponseDto.md)

## Security

- **BearerAuth**
- **ClientPublicKey**
