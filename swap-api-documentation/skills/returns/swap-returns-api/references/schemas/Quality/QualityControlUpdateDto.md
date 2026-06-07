# QualityControlUpdateDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `store_id` | string | Yes | The unique identifier of the store that the item belongs to |
| `condition` | string | Yes | The condition of the returned item for status mapping |
| `return_qty` | integer | Yes | The quantity of items being returned |
| `provider` | string | No | Legacy field from v1, will be ignored |
| `shopify_order_id` | string | No | The unique identifier of the order from Shopify. Either this or shopify_order_name must be provided. |
| `shopify_order_name` | string | No | The display name of the Shopify order (e.g. #1234). Either this or shopify_order_id must be provided. |
| `sku` | string | No | The Stock Keeping Unit (SKU) of the item. Either this or shopify_line_item_id must be provided. |
| `shopify_line_item_id` | string | No | The Shopify line item ID for precise item identification. When provided, this takes priority over SKU for item identification. Either this or sku must be provided. |
| `order_date` | string (date-time) | No | The date when the order was placed (ISO 8601 format) |
| `receipt_date` | string (date-time) | No | The date when the item was received (ISO 8601 format) |
| `carton_id` | string | No | The unique identifier of the carton containing the return |

