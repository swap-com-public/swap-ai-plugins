# DELETE /label/:id

**Resource:** [Labels](../resources/Labels.md)
**Cancel a shipping label**
**Operation ID:** `delete--label-:id`

Cancel a shipping label.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `id` | path | string | Yes |  |
| `x-api-key` | header | string | Yes |  |

## Responses

| Status | Description |
|--------|-------------|
| 204 | No Content - Label cancelled successfully |
| 400 | Bad Request |
| 401 | Unauthorized |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Internal Server Error |

