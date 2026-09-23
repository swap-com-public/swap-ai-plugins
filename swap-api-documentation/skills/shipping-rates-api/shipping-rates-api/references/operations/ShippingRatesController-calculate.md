# POST /partners/v1/shipping/calculate

**Resource:** [Shipping Rates](../resources/Shipping-Rates.md)
**Calculate partner shipping rates**
**Operation ID:** `ShippingRatesController_calculate`

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [RateCalculationRequestDto](../schemas/Rate/RateCalculationRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 |  |
| 400 | The request body failed validation: a missing required field, an out-of-range value (for example a non-positive cart weight), or an unrecognised country code. `errors` maps each rejected field to its messages. |
| 401 | Missing or invalid API key |
| 500 | Unexpected server error |

**Success Response Schema:**

[RateCalculationResponseDto](../schemas/Rate/RateCalculationResponseDto.md)

## Security

- **X-Api-Key**
