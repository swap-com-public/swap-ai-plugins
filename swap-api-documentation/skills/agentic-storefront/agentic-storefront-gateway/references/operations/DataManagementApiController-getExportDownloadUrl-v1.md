# GET /v1/user/data-management/{jobId}/download

**Resource:** [DataManagementApi](../resources/DataManagementApi.md)
**Get export download URL**
**Operation ID:** `DataManagementApiController_getExportDownloadUrl_v1`

Returns a pre-signed download URL for a completed export job. Returns 400 if job is not completed; 503 if the link expired and cannot be regenerated.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `jobId` | path | string | Yes |  |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Download URL and expiry |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |
| 503 | Download link expired and re-export may be required |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `messages` | string[] | Yes |  |
| `data` | [GetExportDownloadUrlResponseDto](../schemas/Get/GetExportDownloadUrlResponseDto.md) | Yes |  |

## Security

- **BearerAuth**
- **ClientPublicKey**
