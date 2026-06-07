# PaginationDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `total` | number | Yes | The total number of orders |
| `limit` | number | Yes | The page size limit of the orders. Used for pagination. |
| `offset` | number | Yes | The offset of the orders. Used for pagination. |
| `hasMore` | boolean | Yes | Whether there are more orders to fetch. |

