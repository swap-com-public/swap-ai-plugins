# ExternalReturnsResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orders` | ExternalReturnOrderDto[] | Yes |  |
| `version` | number | Yes |  |
| `query_params` | object | Yes |  |
| `pagination` | [PaginationMetadata](PaginationMetadata.md) | Yes |  |

## Nested Fields

### `query_params`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `store` | string | No |  |
| `from_date` | string | No |  |
| `to_date` | string | No |  |
| `items_per_page` | integer | No |  |
| `page` | integer | No |  |
| `last_updated_date` | string | No |  |
| `submitted_at_from` | string | No |  |
| `submitted_at_to` | string | No |  |

