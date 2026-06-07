# POST /v1/user/data-management/export

**Resource:** [DataManagementApi](../resources/DataManagementApi.md)
**Request user data export**
**Operation ID:** `DataManagementApiController_requestExport_v1`

Creates an export job for the authenticated user's data. Returns job id and status (requires authenticated user).

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Export job created successfully |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 409 | A data management job is already in progress for this user |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `messages` | string[] | Yes |  |
| `data` | [RequestDataExportOrDeletionResponseDto](../schemas/Request/RequestDataExportOrDeletionResponseDto.md) | Yes |  |

## Security

- **BearerAuth**
- **ClientPublicKey**
