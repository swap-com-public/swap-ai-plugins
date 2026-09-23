# RateCalculationRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `merchantId` | string | Yes | Partner merchant identifier |
| `originCountryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `destinationCountryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `cartWeight` | number | Yes |  |
| `cartWeightUnit` | enum: kg, lb | Yes |  |
| `packageDimensions` | object | No |  |
| `services` | object[] | No |  |

## Nested Fields

### `packageDimensions`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `length` | number | Yes |  |
| `width` | number | Yes |  |
| `height` | number | Yes |  |
| `unit` | enum: cm, in | Yes |  |

### `services`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `carrierKey` | string | Yes |  |
| `serviceKey` | string | No |  |

