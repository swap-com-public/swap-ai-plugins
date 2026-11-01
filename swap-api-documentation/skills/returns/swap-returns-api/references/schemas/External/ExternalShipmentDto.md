# ExternalShipmentDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `shipment_id` | string | Yes |  |
| `location_id` | string | Yes | Shopify location the items were fulfilled from. Only set for split shipments, "default" otherwise. |
| `destination_location_id` | string | No | ID of the return location this shipment is sent to. Usually a store return location ID, sometimes a Shopify location ID. Omitted when unknown. |
| `destination_location_name` | string | No | Name of the return location this shipment is sent to. Omitted when unknown. |
| `destination_country_code` | string | No | ISO 3166-1 alpha-2 country code of the return location this shipment is sent to. Omitted when unknown. |
| `display_name_returns_portal` | string | No |  |
| `carrier_id` | string | Yes |  |
| `postage_fee` | number | Yes |  |
| `label_type` | string | Yes |  |
| `shipping_service` | string | Yes |  |
| `display_name` | string | Yes |  |
| `using_split_shipment` | boolean | No |  |
| `label_provider_type` | string | No |  |
| `tracking_number` | string | No |  |
| `tracking_url` | string | No |  |
| `package` | [ExternalPackageDto](ExternalPackageDto.md) | No |  |
| `items` | ExternalShipmentItemDto[] | Yes |  |

