# ExternalReturnsV2ResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `returns` | ExternalReturnV2Dto[] | Yes |  |
| `version` | number | Yes |  |
| `query_params` | object | Yes |  |
| `pagination` | [PaginationMetadata](PaginationMetadata.md) | Yes |  |

## Nested Fields

### `query_params`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `swap_store_id` | string | No |  |
| `rma_number` | string | No |  |
| `shopify_order_name` | string | No |  |
| `from_return_submission_date` | string | No |  |
| `to_return_submission_date` | string | No |  |
| `last_RMA_updated_date` | string | No |  |
| `api_version` | integer | No |  |
| `items_per_page` | integer | No |  |
| `page` | integer | No |  |

