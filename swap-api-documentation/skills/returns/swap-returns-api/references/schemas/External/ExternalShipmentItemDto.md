# ExternalShipmentItemDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `product_id` | string | Yes |  |
| `shopify_product_id` | string | Yes |  |
| `shopify_variant_id` | string | Yes |  |
| `shopify_line_item_id` | string | Yes |  |
| `order_number` | string | Yes |  |
| `original_order_name` | string | Yes |  |
| `date` | string | Yes |  |
| `product_name` | string | Yes |  |
| `variant_name` | string | Yes |  |
| `full_sku_description` | string | Yes |  |
| `sku` | string | Yes |  |
| `main_reason_id` | string | No |  |
| `main_reason_text` | string | No |  |
| `sub_reason_id` | string | No |  |
| `sub_reason_text` | string | No |  |
| `comments` | string | No |  |
| `item_count` | integer | Yes |  |
| `cost` | number | Yes |  |
| `return_type` | string | Yes |  |
| `currency` | string | Yes |  |
| `vendor` | string | No |  |
| `collection` | string[] | No |  |
| `product_alt_type` | string | No |  |
| `grams` | number | Yes |  |
| `intake_reason` | string | No |  |
| `tags` | string | No |  |
| `is_faulty` | boolean | No |  |
| `refunded_taxes` | number | No |  |
| `refunded_duties` | number | No |  |
| `refunded_inclusive_taxes` | number | No |  |
| `refunded_inclusive_duties` | number | No |  |
| `refunded_non_inclusive_taxes` | number | No |  |
| `refunded_non_inclusive_duties` | number | No |  |
| `barcode` | string | Yes |  |
| `original_tax_amount` | number | No |  |
| `tax_rate` | number | No |  |
| `tax_title` | string | No |  |

