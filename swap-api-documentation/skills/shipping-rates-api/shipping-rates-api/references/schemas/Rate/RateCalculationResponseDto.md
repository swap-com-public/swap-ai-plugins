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
| `calculationId` | string (uuid) | Yes | Stable identifier of this specific price option. Store it with the order and return it in the transaction confirmation so the shipment can be matched to the exact quote. |
| `carrierKey` | string | Yes |  |
| `carrierDisplayName` | string | Yes |  |
| `serviceKey` | string | Yes |  |
| `serviceDisplayName` | string | Yes |  |
| `amount` | number | Yes |  |
| `currency` | string | Yes |  |
| `charges` | object[] | Yes | Breakdown of `amount`: TRANSPORT (rate-card base) and FUEL (fuel surcharge, 0 when none applies). The charges sum exactly to `amount`. |

#### `rates.charges`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `type` | enum: TRANSPORT, FUEL | Yes |  |
| `amount` | number | Yes |  |

### `unresolved`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `carrierKey` | string | Yes |  |
| `carrierDisplayName` | string | Yes |  |
| `serviceKey` | string | Yes |  |
| `serviceDisplayName` | string | Yes |  |
| `reason` | enum: RATE_CARD_UNAVAILABLE, WEIGHT_NOT_SUPPORTED, SURCHARGE_CURRENCY_MISMATCH, SERVICE_NOT_FOUND, LANE_NOT_SUPPORTED | Yes |  |

