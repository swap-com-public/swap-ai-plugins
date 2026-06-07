# AuthorizeSessionRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `conversationId` | string | No | Optional conversationId for explicit resumption; bypasses 30-minute auto-resumption. |
| `forceNew` | boolean | No | When true, forces a new conversation; bypasses 30-minute auto-resumption. |
| `utm` | [UtmParamsDto](UtmParamsDto.md) | No |  |

