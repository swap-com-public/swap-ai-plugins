# POST /tax-duty/v1/process/validate

**Resource:** [Process TLC](../resources/Process-TLC.md)
**Validate TLC for a cross-border shipment**
**Operation ID:** `TLCController_processValidate`

Validates shipment details including origin address, destination address, currency code and hs codes.

## Request Body

The TLC validation request includes shipping addresses (from/to), currency code and line items.

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ProcessValidateRequest](../schemas/Process/ProcessValidateRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 204 | TLC validated successfully. |
| 400 | Bad Request - The payload is invalid or missing required fields. |
| 500 | Internal server error - An issue occurred while processing. |

## Security

- **x-api-key**
