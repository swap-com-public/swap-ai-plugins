# StandardResponseDto

Generic envelope `{ messages: string[], data: T }` from @window-shop/entities. Prefer endpoint-specific wrappers where listed.

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `messages` | string[] | Yes |  |
| `data` | any | Yes | Payload; see endpoint response schema for expected shape. |

