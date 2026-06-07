# GET /v1/user/profile-settings/saved-addresses

**Resource:** [UserProfileSettingsDetailsApi](../resources/UserProfileSettingsDetailsApi.md)
**Get saved addresses**
**Operation ID:** `UserProfileSettingsDetailsApiController_getSavedAddresses_v1`

Retrieves the saved addresses from the user profile

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Successfully retrieved saved addresses |
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
| `data` | AddressModel[] | Yes |  |

## Security

- **BearerAuth**
- **ClientPublicKey**
