# POST /v1/agents/session/authorize

**Resource:** [Wire](../resources/Wire.md)
**Start or refresh a realtime assistant session**
**Operation ID:** `WireController_authorizeSession_v1`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |

## Request Body

**Content Types:** `application/json`

**Schema:** [AuthorizeSessionRequestDto](../schemas/Authorize/AuthorizeSessionRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Wire or Layercode authorize payload. |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

**Success Response Schema:**

[AuthorizeSessionResponseUnion](../schemas/Authorize/AuthorizeSessionResponseUnion.md)

## Security

- **BearerAuth**
