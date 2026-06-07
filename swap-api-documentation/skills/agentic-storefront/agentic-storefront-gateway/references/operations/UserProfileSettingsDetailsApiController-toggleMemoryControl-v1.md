# PUT /v1/user/profile-settings/memory-control

**Resource:** [UserProfileSettingsDetailsApi](../resources/UserProfileSettingsDetailsApi.md)
**Toggle memory control**
**Operation ID:** `UserProfileSettingsDetailsApiController_toggleMemoryControl_v1`

Toggles AI memory control enabled/disabled (requires authenticated user)

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ToggleMemoryControlRequestDto](../schemas/Toggle/ToggleMemoryControlRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Successfully toggled memory control |
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
