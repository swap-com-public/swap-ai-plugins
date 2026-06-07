# ExternalReturnOrderDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `order_name` | string | Yes |  |
| `order_id` | string | Yes |  |
| `rma` | string | Yes |  |
| `date_created` | string | Yes |  |
| `date_updated` | string | Yes |  |
| `submitted_at` | string | No |  |
| `type_string` | string | Yes |  |
| `type` | string[] | Yes |  |
| `delivery_status` | string | Yes |  |
| `return_status` | string | Yes |  |
| `total` | number | Yes |  |
| `handling_fee` | number | Yes |  |
| `return_id` | string | Yes |  |
| `shop_now_revenue` | number | Yes |  |
| `shop_later_revenue` | number | Yes |  |
| `exchange_revenue` | number | Yes |  |
| `refund_revenue` | number | Yes |  |
| `store_id` | string | Yes |  |
| `total_additional_payment` | number | Yes |  |
| `total_credit_exchange_value` | number | Yes |  |
| `total_refund_value_customer_currency` | number | Yes |  |
| `store_name` | string | Yes |  |
| `customer_currency` | string | Yes |  |
| `customer_name` | string | Yes |  |
| `customer_national_id` | string | No |  |
| `customer_locale` | string | Yes |  |
| `shipping_carrier` | string | Yes |  |
| `shopify_order_date` | string | Yes |  |
| `shipment_from_address_country` | string | Yes |  |
| `shipment_from_address_city` | string | Yes |  |
| `shipment_from_address_parcel_weight` | number | Yes |  |
| `shipment_from_address_state` | string | Yes |  |
| `tags` | string | Yes |  |
| `billing_address` | [BillingAddress](BillingAddress.md) | No |  |
| `shipping_address` | [BillingAddress](BillingAddress.md) | No |  |
| `processed` | string | Yes |  |
| `processed_by` | string | Yes |  |
| `order_alt_type` | string | Yes |  |
| `quality_control_status` | string | Yes |  |
| `delivered_date` | string | Yes |  |
| `elapsed_days_purchase_to_return` | number | No |  |
| `elapsed_days_return_to_delivery` | number | No |  |
| `elapsed_days_delivery_closed` | number | No |  |
| `date_closed` | string | Yes |  |
| `tracking_number` | string | Yes |  |
| `total_refunded_taxes` | number | No |  |
| `total_refunded_duties` | number | No |  |
| `products` | ExternalReturnProductDto[] | Yes |  |

