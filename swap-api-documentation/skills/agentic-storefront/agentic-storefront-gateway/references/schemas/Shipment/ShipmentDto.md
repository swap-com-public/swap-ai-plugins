# ShipmentDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | number | Yes |  |
| `status` | string | Yes |  |
| `trackingNumber` | string | Yes |  |
| `trackingUrl` | string | Yes |  |
| `shippedAt` | string | Yes |  |
| `estimatedDeliveryAt` | string | Yes |  |
| `carrier` | any | Yes |  |
| `events` | ShipmentEventDto[] | Yes |  |
| `items` | ShipmentItemDto[] | Yes |  |

