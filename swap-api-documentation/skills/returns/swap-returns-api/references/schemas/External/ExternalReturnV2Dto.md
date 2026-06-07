# ExternalReturnV2Dto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `rma_number` | string | Yes |  |
| `return_id` | string | Yes |  |
| `shopify_return_id` | string | No |  |
| `shopify_order_name` | string | Yes |  |
| `order_id` | string | Yes |  |
| `date_created` | string | Yes |  |
| `date_updated` | string | Yes |  |
| `submission_date` | string | No | The submission date of the return |
| `submitted_at` | string | No | Backward compatibility with v1 |
| `intention_date` | string | Yes | Date when the return intention was created |
| `type_string` | string | Yes |  |
| `type` | string[] | Yes |  |
| `delivery_status` | string | Yes |  |
| `return_status` | string | Yes |  |
| `shipping_carrier` | string | Yes |  |
| `tracking_number` | string | Yes |  |
| `shipment_from_address_country` | string | Yes |  |
| `shipment_from_address_city` | string | Yes |  |
| `shipment_from_address_parcel_weight` | number | Yes |  |
| `shipment_from_address_state` | string | Yes |  |
| `total` | number | Yes |  |
| `handling_fee` | number | Yes |  |
| `store_id` | string | Yes |  |
| `store_name` | string | Yes |  |
| `customer_name` | string | Yes |  |
| `customer_email` | string | Yes |  |
| `customer_national_id` | string | No |  |
| `customer_locale` | string | Yes |  |
| `customer_currency` | string | Yes |  |
| `total_additional_payment` | number | Yes |  |
| `total_credit_exchange_value` | number | Yes |  |
| `total_refund_value_customer_currency` | number | Yes |  |
| `total_store_credit_value_customer_currency` | number | Yes |  |
| `shop_now_revenue` | number | Yes |  |
| `shop_later_revenue` | number | Yes |  |
| `store_credit_revenue` | number | Yes |  |
| `exchange_revenue` | number | Yes |  |
| `refund_revenue` | number | Yes |  |
| `shopify_order_date` | string | Yes |  |
| `rma_processed` | string | Yes |  |
| `processed_by` | string | Yes |  |
| `order_alt_type` | string | No |  |
| `quality_control_status` | string | Yes |  |
| `delivered_date` | string | Yes |  |
| `elapsed_days_purchase_to_return` | number | No |  |
| `elapsed_days_return_to_delivery` | number | No |  |
| `elapsed_days_delivery_closed` | number | No |  |
| `date_closed` | string | No |  |
| `total_refunded_taxes` | number | No |  |
| `total_refunded_duties` | number | No |  |
| `tags` | string | Yes |  |
| `billing_address` | [BillingAddress](BillingAddress.md) | No |  |
| `shipping_address` | [BillingAddress](BillingAddress.md) | No |  |
| `return_shipments` | ExternalShipmentDto[] | Yes |  |
| `products` | ExternalReturnProductDto[] | Yes |  |
| `exchange_items` | ExternalExchangeItemDto[] | Yes |  |
| `portal_quick_link` | string | No |  |

