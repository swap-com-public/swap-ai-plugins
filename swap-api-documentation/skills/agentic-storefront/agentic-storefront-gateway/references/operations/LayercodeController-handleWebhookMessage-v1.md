# POST /v1/agents/agents

**Resource:** [Layercode](../resources/Layercode.md)
**Hosted agent runtime webhook (stream or callback ingress)**
**Operation ID:** `LayercodeController_handleWebhookMessage_v1`

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [LayercodeWebhookRequestDto](../schemas/Layercode/LayercodeWebhookRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | JSON for `data` events, or `text/event-stream` / streamed body for speech paths (see LayercodeController). |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `type` | string | No |  |
| `turn_id` | string | No |  |
| `content` | object | No |  |

