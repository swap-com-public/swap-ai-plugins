# GetOrderResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `order` | object | Yes |  |

## Nested Fields

### `order`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string | Yes | The unique Swap identifier for the order. |
| `platformOrderName` | string | Yes | The name of the order as it appears on the platform (i.e #US-123). |
| `orderPlacedAt` | string (date-time) | Yes |  |
| `isPosOrder` | boolean | Yes | Whether the order was placed through a POS (Point of Sale) system. |
| `destinationAddress` | object | Yes |  |
| `items` | object[] | Yes |  |
| `shippingLines` | object[] | Yes |  |
| `pricingSettings` | object | Yes | The merchant pricing settings that were applied to the order. |
| `fees` | object | Yes | The fees that were applied to the order. |
| `actualTaxCalculation` | object | Yes | The tax calculation that was generated after the order was purchased. This can be different from the billable tax calculation if discounts were not seen by Swap at checkout or if an inclusive tax strategy was applied. |
| `billableTaxCalculation` | object | Yes | The tax calculation that was billed to the customer at the time of purchase. |
| `discountDetails` | object | Yes |  |
| `totals` | object | Yes |  |
| `currency` | string | Yes |  |
| `customerCheckoutCurrency` | string | Yes |  |
| `statuses` | object | Yes |  |
| `checkoutFulfillments` | object[] | Yes | The separate fulfillments that were generated at checkout for the order. Each fulfillment represents a separate shipment of the order with its own origin address and tax calculation. |

#### `order.destinationAddress`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `address1` | string | Yes |  |
| `address2` | string | Yes |  |
| `city` | string | Yes |  |
| `postalCode` | string | Yes |  |
| `provinceCode` | string | Yes |  |
| `countryCode` | string | Yes |  |
| `country` | string | Yes |  |
| `firstName` | string | Yes |  |
| `lastName` | string | Yes |  |
| `companyName` | string | Yes |  |

#### `order.items`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `platformVariantId` | string | Yes |  |
| `variantOptionsSelections` | object[] | Yes |  |
| `productDetails` | object | Yes |  |
| `priceBreakdown` | object | Yes | The price breakdown for the item. |
| `discountDetails` | object | Yes |  |
| `classificationDetails` | object | Yes |  |
| `quantity` | integer | Yes |  |
| `taxableItemPrice` | number | Yes |  |
| `isTaxable` | boolean | Yes |  |
| `actualTaxCalculation` | object | Yes | The true tax calculation for the item that was generated after the item was purchased. This can be different from the billable tax calculation if discounts were not seen by Swap at checkout or if an inclusive tax strategy was applied. |
| `billableTaxCalculation` | object | Yes | The tax calculation for the item that was be billed to the customer at the time of purchase. |

#### `order.shippingLines`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes |  |
| `shippingRate` | object | Yes |  |
| `actualTaxCalculation` | object | Yes | The true tax calculation for the item that was generated after the item was purchased. This can be different from the billable tax calculation if discounts were not seen by Swap at checkout or if an inclusive tax strategy was applied. |
| `billableTaxCalculation` | object | Yes | The tax calculation for the item that was be billed to the customer at the time of purchase. |
| `shippingRatesIncludeVat` | boolean | Yes | If true, the shipping rate used by Swap was assumed to already include VAT. |

#### `order.pricingSettings`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `buffersSettings` | object | Yes | The merchant-set buffers that were applied to the order. |
| `taxStrategy` | enum: Checkout, VAT-Inclusive, TLC-Inclusive... | Yes | The tax strategy that was applied to the order. |
| `pricesIncludeStrategy` | boolean | Yes | If true, the storefront prices were assumed to include the set Tax Strategy and were not adjusted by Swap. |
| `dynamicPricingSettings` | object | Yes |  |
| `fixedPricingSettings` | object | Yes |  |

#### `order.fees`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `customerFees` | object | Yes |  |
| `merchantFees` | object | Yes |  |

#### `order.actualTaxCalculation`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderTaxLines` | object[] | Yes |  |
| `totals` | object | Yes |  |

#### `order.billableTaxCalculation`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderTaxLines` | object[] | Yes |  |
| `totals` | object | Yes |  |

#### `order.discountDetails`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `numberDiscountsApplied` | integer | Yes |  |
| `totalDiscountAmount` | number | Yes |  |

#### `order.totals`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `items` | object | Yes |  |
| `shipping` | object | Yes |  |
| `order` | object | Yes |  |

#### `order.statuses`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `shippingStatuses` | object[] | Yes |  |
| `orderDisplayStatus` | enum: Order placed, Shipped, Cancelled... | Yes |  |

#### `order.checkoutFulfillments`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes |  |
| `originAddress` | object | Yes |  |
| `items` | object[] | Yes |  |
| `shippingLineId` | string | Yes | The ID of the shipping line in the order-level array that represents the shipping for this fulfillment. |
| `actualTaxCalculation` | object | Yes |  |
| `billableTaxCalculation` | object | Yes |  |
| `fees` | object | Yes |  |
| `totals` | object | Yes |  |

