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
| `itemPrice` | number | No |  |
| `discountedItemPrice` | number | No |  |
| `manufactureCost` | number | No |  |
| `weightGrams` | number | No | Per-unit net weight in grams. Omit or send null when unknown; 0 is treated as unknown. |
| `isTaxable` | boolean | No | Whether taxes and duties apply to this item. Set false for non-taxable items such as gift cards or digital goods; they are returned with a zero tax and duty breakdown. |
| `classificationInfo` | object | No |  |

#### `items.classificationInfo`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `countryCodeOfOrigin` | string | No | A valid ISO 3166-1 alpha-2 country code |
| `hsCode` | string | No | Required for taxable items; may be omitted when `isTaxable` is false. |

