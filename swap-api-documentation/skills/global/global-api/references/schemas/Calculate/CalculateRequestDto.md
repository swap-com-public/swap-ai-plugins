# CalculateRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `originAddress` | object | Yes |  |
| `destinationAddress` | object | Yes |  |
| `items` | object[] | Yes |  |
| `currency` | string | Yes |  |
| `shippingValue` | number | No |  |

## Nested Fields

### `originAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `city` | string | Yes |  |
| `countryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `provinceCode` | string | Yes |  |
| `postalCode` | string | Yes |  |

### `destinationAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `city` | string | Yes |  |
| `countryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `provinceCode` | string | Yes |  |
| `postalCode` | string | Yes |  |

### `items`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes |  |
| `quantity` | integer | Yes |  |
| `taxableItemPrice` | number | No |  |
| `taxableUnitPrice` | number | No |  |
| `itemPrice` | number | No |  |
| `discountedItemPrice` | number | No |  |
| `manufactureCost` | number | No |  |
| `classificationInfo` | object | Yes |  |

#### `items.classificationInfo`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `countryCodeOfOrigin` | string | No | A valid ISO 3166-1 alpha-2 country code |
| `hsCode` | string | Yes |  |

