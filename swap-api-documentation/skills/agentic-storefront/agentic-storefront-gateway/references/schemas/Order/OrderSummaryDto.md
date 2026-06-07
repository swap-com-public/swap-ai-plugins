# OrderSummaryDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string | Yes | The ID of the order |
| `orderNumber` | string | Yes | The number of the order |
| `status` | enum: pending, paid, fulfilled... | Yes | The status of the order |
| `total` | number | Yes | The total amount of the order |
| `totalMinor` | number | Yes | The total amount of the order in minor units |
| `currency` | string | Yes | The currency of the order |
| `createdAt` | string | Yes |  |

