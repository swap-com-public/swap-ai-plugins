# ValidationErrorResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `status` | enum: error | Yes |  |
| `target` | string | Yes |  |
| `error` | object | Yes |  |

## Nested Fields

### `error`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `issues` | object[] | Yes |  |

#### `error.issues`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `code` | string | No |  |
| `message` | string | No |  |
| `expected` | string | No |  |
| `received` | string | No |  |
| `path` | any[] | No |  |

