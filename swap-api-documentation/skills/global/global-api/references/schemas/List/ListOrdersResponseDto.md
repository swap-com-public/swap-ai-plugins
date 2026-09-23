# ListOrdersResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `totalOrdersCount` | integer | Yes |  |
| `page` | integer | Yes |  |
| `pageSize` | integer | Yes |  |
| `totalPages` | integer | Yes |  |
| `orders` | object[] | Yes |  |

## Nested Fields

### `orders`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string | Yes |  |
| `storeId` | string | Yes |  |
| `platformOrderName` | string | Yes |  |
| `platformOrderId` | string | Yes |  |
| `orderPlacedAt` | string (date-time) | Yes |  |
| `destinationCountryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `currency` | string | Yes |  |
| `numberItems` | integer | Yes |  |
| `subtotal` | number | Yes |  |
| `shippingTotal` | number | Yes |  |
| `totalTaxesCollected` | number | Yes |  |
| `totalDutiesCollected` | number | Yes |  |
| `totalTaxesCalculated` | number | Yes |  |
| `totalDutiesCalculated` | number | Yes |  |
| `orderTotal` | number | Yes |  |
| `totalCharged` | number | Yes |  |
| `statuses` | object | Yes |  |

#### `orders.statuses`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderStatus` | string[] | Yes |  |
| `paymentStatus` | enum: Pending, Authorized, Partially Paid... | Yes |  |
| `fulfillmentStatus` | enum: Fulfilled, Partially Fulfilled, Restocked... | Yes |  |
| `shippingStatuses` | object[] | Yes |  |
| `orderDisplayStatus` | enum: Order placed, Shipped, Cancelled... | Yes |  |

