# GET /v1/api/stores

**Resource:** [Stores](../resources/Stores.md)
**Look up store details by Swap ID**
**Operation ID:** `StoresController_getStoreBySwapId_v1`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `swapId` | query | string | Yes |  |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Store information retrieved successfully. |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `messages` | string[] | Yes |  |
| `data` | any | Yes |  |

