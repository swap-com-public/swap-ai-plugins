# CreateOrderRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `calculationId` | string | Yes |  |
| `order` | object | Yes |  |

## Nested Fields

### `order`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `platformOrderId` | string | Yes | The unique identifier for the order in the user's system/platform |
| `platformOrderName` | string | No | The display name of the order in the user's system/platform (i.e #US123) |
| `placedAt` | string (date-time) | Yes | The date and time the order was created in the user's system/platform |
| `totalAmount` | number | Yes | The total amount charged to the customer for the order (including taxes, duties, discounts, and shipping) |
| `shipping` | object | Yes |  |
| `email` | string (email) | No | The email address of the customer |
| `lineItems` | object[] | Yes |  |
| `destinationAddress` | object | Yes |  |

#### `order.shipping`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `rateName` | string | No | The name of the shipping rate (i.e Standard Shipping) |
| `rateCode` | string | No | A unique rate code to be used by 3PL systems to match the shipping rate. |
| `rateAmount` | number | Yes | The amount charged for the shipping rate. This is the shipping amount recorded on the order. It should match the shippingValue sent to /checkout/calculate, which is the amount shipping taxes and duties were calculated over |

#### `order.lineItems`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes |  |
| `productId` | string | Yes | The unique identifier for the product in the user's system/platform |
| `lineItemId` | string | No | The unique identifier for the line item in the user's system/platform. If not provided, a random UUID will be generated |
| `productName` | string | Yes | The name of the product in the user's system/platform |
| `productTitle` | string | No | The title of the product in the user's system/platform. Defaults to productName when omitted |
| `variantTitle` | string | No | The title of the variant in the user's system/platform. May be null or empty for products without variants; persisted as an empty string |
| `weightGrams` | integer | Yes | The weight of the line item in grams. 0 is valid for digital or otherwise zero-weight items |
| `sku` | string | No |  |
| `barcode` | string | No |  |
| `shippable` | boolean | Yes | Whether the line item is shippable (i.e False if digital) |

#### `order.destinationAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `countryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `provinceCode` | string | No |  |
| `city` | string | Yes |  |
| `postalCode` | string | No | Should only be null if country does not use postal codes |
| `address1` | string | Yes |  |
| `address2` | string | No |  |
| `firstName` | string | No |  |
| `lastName` | string | No |  |
| `companyName` | string | No |  |
| `phone` | string | No |  |

