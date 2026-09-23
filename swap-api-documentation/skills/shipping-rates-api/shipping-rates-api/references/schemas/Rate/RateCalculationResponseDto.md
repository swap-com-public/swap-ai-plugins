# RateCalculationResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `rates` | object[] | Yes |  |
| `unresolved` | object[] | Yes |  |

## Nested Fields

### `rates`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `carrierKey` | string | Yes |  |
| `carrierDisplayName` | string | Yes |  |
| `serviceKey` | string | Yes |  |
| `serviceDisplayName` | string | Yes |  |
| `amount` | number | Yes |  |
| `currency` | string | Yes |  |

### `unresolved`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `carrierKey` | string | Yes |  |
| `carrierDisplayName` | string | Yes |  |
| `serviceKey` | string | Yes |  |
| `serviceDisplayName` | string | Yes |  |
| `reason` | enum: RATE_CARD_UNAVAILABLE, WEIGHT_NOT_SUPPORTED, SURCHARGE_CURRENCY_MISMATCH... | Yes |  |

