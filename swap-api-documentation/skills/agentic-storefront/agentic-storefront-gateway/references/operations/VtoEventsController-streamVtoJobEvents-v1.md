# GET /v1/agents/vto/jobs/events

**Resource:** [VtoEvents](../resources/VtoEvents.md)
**Stream virtual try-on job updates (SSE)**
**Operation ID:** `VtoEventsController_streamVtoJobEvents_v1`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-store-id` | header | string | No | Store identifier (optional). |
| `last-event-id` | header | string | No | SSE reconnection cursor. Optional on first connect. |
| `x-public-key` | header | string | No | Client public API key when using public-key auth instead of (or without) a Bearer ID token. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Server-Sent Events stream of VTO job updates. |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). For SSE, failures after headers are sent may not use this JSON body. |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

## Security

- **BearerAuth**
- **ClientPublicKey**
