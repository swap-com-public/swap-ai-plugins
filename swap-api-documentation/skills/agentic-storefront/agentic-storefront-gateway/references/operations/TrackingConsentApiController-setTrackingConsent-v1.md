# PUT /v1/api/user/tracking-consent

**Resource:** [TrackingConsentApi](../resources/TrackingConsentApi.md)
**Set user tracking consent**
**Operation ID:** `TrackingConsentApiController_setTrackingConsent_v1`

Sets the user tracking consent for the current store (requires authenticated user)

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [SetTrackingConsentRequestDto](../schemas/Set/SetTrackingConsentRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Successfully set user tracking consent |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `messages` | string[] | Yes |  |
| `data` | any | Yes | Always null for this endpoint. |

## Security

- **BearerAuth**
- **ClientPublicKey**
