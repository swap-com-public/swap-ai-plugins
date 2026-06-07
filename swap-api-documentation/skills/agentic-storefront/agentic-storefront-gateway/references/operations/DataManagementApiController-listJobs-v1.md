# GET /v1/user/data-management/mine

**Resource:** [DataManagementApi](../resources/DataManagementApi.md)
**List user data management jobs**
**Operation ID:** `DataManagementApiController_listJobs_v1`

Returns a paginated list of data management jobs for the authenticated user.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `limit` | query | number | No | Maximum number of jobs to return |
| `storeId` | query | string | No | Store ID to filter jobs by. Can be provided in query or as X-Store-Id header. Query parameter takes precedence over header. |
| `cursor` | query | string | No | Cursor for pagination - last user data management id - `userId_jobId` |
| `x-store-id` | header | string | No | Optional store filter. If both this header and the `storeId` query parameter are set, the query value is used. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | List of jobs with pagination info |
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
| `data` | [GetDataManagementListResponseDto](../schemas/Get/GetDataManagementListResponseDto.md) | Yes |  |

## Security

- **BearerAuth**
- **ClientPublicKey**
