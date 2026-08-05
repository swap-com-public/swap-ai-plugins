# POST /public/v1/shipping/rates

**Resource:** [Public](../resources/Public.md)
**POST /shipping/rates**
**Operation ID:** `ShippingPublicController_calculateRates`

Returns shipping rates for the current cart.

:::tip Optional Endpoint
This is an **optional step before [`/checkout/calculate`](/products/global/global-reference/checkout-controller-calculate/)**. Call it before, after, or alongside [`/checkout/classify`](/products/global/global-reference/checkout-controller-classify/) when you use Swap-managed **shipping zones** instead of supplying shipping amounts yourself.

If you manage shipping outside Swap, skip this endpoint and pass your own shipping amount to `/checkout/calculate` instead.
:::

Shipping zones define which destinations you ship to and which rates apply in each market. Configure them in the **Merchant Dashboard** before calling this endpoint. For how zones and shipping presentation fit together, see the [Shipping Zones Knowledge-base Article](https://help.swap-commerce.com/en/articles/10824723-understanding-shipping-zones).

Send the **destination country**, **currency**, **cart line items**, **itemsCurrency**, and optionally **ratesCurrency**. The `price` and `weightGrams` fields on an `items` entry should be the price and weight of a single item, regardless of the `quantity` value. The `itemsCurrency` field is currency of the item prices supplied. The optional `ratesCurrency` field (ISO currency code or `null`) converts each returned rate's `amount` into that currency; omit it or pass `null` to return rates in their zone-configured currencies.

Swap evaluates the cart against the **shipping zones** configured in the **Swap Merchant Dashboard** and returns an array of eligible rates in `shippingRates`. Each rate includes a customer-facing `displayName`, `amount`, `currency`, and a stable `rateCode` you can store when the shopper selects an option. When `ratesCurrency` is set, every rate's `currency` matches that code.

:::info Shipping Choice Affects Calculation
Once the shopper selects a rate — or changes their selection — call `/checkout/calculate` with that rate's `amount` in `shippingValue` so taxes and duties reflect the chosen shipping cost.
:::

**Call it when:** You want Swap to return shipping options from configured zones before tax and duty calculation.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [CalculateShippingRatesRequest](../schemas/Calculate/CalculateShippingRatesRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Shipping rates successfully retrieved |
| 400 | Invalid request body |
| 401 | Missing or invalid API key |
| 500 | Internal server error |

**Success Response Schema:**

[CalculateShippingRatesResponse](../schemas/Calculate/CalculateShippingRatesResponse.md)

## Security

- **X-Api-Key**
