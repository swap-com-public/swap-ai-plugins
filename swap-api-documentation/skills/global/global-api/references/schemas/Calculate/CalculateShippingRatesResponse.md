# CalculateShippingRatesResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `shippingRates` | object[] | Yes |  |

## Nested Fields

### `shippingRates`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `displayName` | string | Yes |  |
| `amount` | number | Yes |  |
| `currency` | string | Yes |  |
| `rateCode` | string | Yes | A stable code to be used by 3PL systems to match the shipping rate. |

