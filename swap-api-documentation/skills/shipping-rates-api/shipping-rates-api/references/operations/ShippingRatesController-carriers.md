# GET /partners/v1/shipping/carriers

**Resource:** [Shipping Rates](../resources/Shipping-Rates.md)
**List partner shipping carriers and services**
**Operation ID:** `ShippingRatesController_carriers`

## Responses

| Status | Description |
|--------|-------------|
| 200 |  |
| 401 | Missing or invalid API key |
| 500 | Unexpected server error |

**Success Response Schema:**

[CarrierListResponseDto](../schemas/Carrier/CarrierListResponseDto.md)

## Security

- **X-Api-Key**
