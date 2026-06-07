# PublicCalculateResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `originAddress` | object | Yes |  |
| `destinationAddress` | object | Yes |  |
| `currency` | string | Yes |  |
| `items` | object[] | Yes |  |
| `shipping` | object | Yes |  |
| `totals` | object | Yes |  |
| `calculationId` | string | Yes |  |
| `fees` | object[] | Yes |  |

## Nested Fields

### `originAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `city` | string | Yes |  |
| `countryCode` | string | Yes |  |
| `provinceCode` | string | Yes |  |
| `postalCode` | string | Yes |  |

### `destinationAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `city` | string | Yes |  |
| `countryCode` | string | Yes |  |
| `provinceCode` | string | Yes |  |
| `postalCode` | string | Yes |  |

### `items`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes |  |
| `quantity` | number | Yes |  |
| `taxableItemPrice` | number | Yes |  |
| `hsCode` | string | Yes |  |
| `countryCodeOfOrigin` | string | Yes |  |
| `isTaxable` | boolean | Yes |  |
| `taxesDutiesBreakdown` | object | Yes |  |

#### `items.taxesDutiesBreakdown`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `totalTaxesCalculated` | number | Yes |  |
| `totalDutiesCalculated` | number | Yes |  |
| `totalTaxesDutiesCalculated` | number | Yes |  |

### `shipping`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `rateAmount` | number | Yes |  |
| `taxableAmount` | number | Yes |  |
| `isTaxable` | boolean | Yes |  |
| `taxesDutiesBreakdown` | object | Yes |  |

#### `shipping.taxesDutiesBreakdown`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `totalTaxesCalculated` | number | Yes |  |
| `totalDutiesCalculated` | number | Yes |  |
| `totalTaxesDutiesCalculated` | number | Yes |  |

### `totals`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `items` | object | Yes |  |
| `shipping` | object | Yes |  |
| `transaction` | object | Yes |  |

#### `totals.items`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `totalItemTaxableAmount` | number | Yes |  |
| `totalItemTaxesDutiesCalculated` | number | Yes |  |

#### `totals.shipping`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `totalShippingTaxableAmount` | number | Yes |  |
| `totalShippingTaxesDutiesCalculated` | number | Yes |  |

#### `totals.transaction`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `subtotal` | number | Yes |  |
| `totalTaxableAmount` | number | Yes |  |
| `totalTaxesDutiesCalculated` | number | Yes |  |
| `totalFeesCalculated` | number | Yes |  |
| `total` | number | Yes |  |

### `fees`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `feeName` | string | Yes |  |
| `feeAmount` | number | Yes |  |
| `feeCurrency` | string | Yes |  |

