# GET /v1/user/data-management/{jobId}

**Resource:** [DataManagementApi](../resources/DataManagementApi.md)
**Get data management job details**
**Operation ID:** `DataManagementApiController_getJobById_v1`

Returns details of a single data management job by id for the authenticated user. Returns 404 if not found or not owned by the user.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `jobId` | path | string | Yes |  |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Job details |
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
| `data` | [UserDataManagementModel](../schemas/User/UserDataManagementModel.md) | Yes |  |

## Security

- **BearerAuth**
- **ClientPublicKey**
