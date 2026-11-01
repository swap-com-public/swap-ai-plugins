# GET /partners/v1/shipping/carriers

**Resource:** [Shipping Rates](../resources/Shipping-Rates.md)
**List partner shipping carriers and services**
**Operation ID:** `ShippingRatesController_carriers`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `X-Request-ID` | header | string | No | Optional correlation id for this attempt (1-128 chars, [A-Za-z0-9._:-]). If omitted or invalid, the server generates one and returns it in the X-Request-ID response header. |

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
