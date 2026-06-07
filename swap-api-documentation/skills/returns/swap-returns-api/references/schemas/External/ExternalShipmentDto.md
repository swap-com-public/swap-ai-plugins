# ExternalShipmentDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `shipment_id` | string | Yes |  |
| `location_id` | string | Yes |  |
| `destination_location_id` | string | No |  |
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

