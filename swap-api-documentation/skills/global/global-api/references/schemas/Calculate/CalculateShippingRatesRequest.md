# CalculateShippingRatesRequest

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `destinationCountryCode` | string | Yes |  |
| `items` | object[] | Yes |  |
| `itemsCurrency` | string | Yes | The currency of item prices in `items` array |
| `ratesCurrency` | string | No | The currency that rates should be returned in (null for zone-configured currencies) |

## Nested Fields

### `items`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | A unique identifier for the item |
| `price` | number | Yes | The price of a single item |
| `quantity` | number | Yes | The quantity of the item |
| `weightGrams` | number | Yes | The weight of a single item in grams |

