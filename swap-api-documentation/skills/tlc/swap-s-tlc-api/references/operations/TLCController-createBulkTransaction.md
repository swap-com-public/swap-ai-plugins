# POST /tax-duty/v1/process/bulk/carriers

**Resource:** [Process TLC](../resources/Process-TLC.md)
**Compute TLC for multiples cross-border shipments in bulk**
**Operation ID:** `TLCController_createBulkTransaction`

Takes in shipment details including origin address, destination address, currency code, and line items with their quantities, prices, and HS codes. Returns a comprehensive breakdown of taxes, duties, disbursement fees, and discounted fees for each line item, along with total amounts.This endpoint is designed for bulk processing of multiple shipments at once.

## Request Body

The TLC request includes store name, shipping addresses (from/to), currency code, and line items with details like quantity, amount, description, HS code, and country of manufacture.

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [TLCBulkRequest](../schemas/TLCBulkRequest/TLCBulkRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | TLC computed successfully. |
| 400 | Bad Request - The payload is invalid, missing required fields, or contains restricted goods. |
| 401 | Unauthorized - Invalid or missing API key in the request headers. |
| 406 | Not Acceptable - The TLC transaction includes an excluded country. |
| 500 | Internal server error - An issue occurred during fee calculation. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `message` | string | Yes |  |
| `data` | [TLCBulkResponse](../schemas/TLCBulkResponse/TLCBulkResponse.md) | Yes |  |

## Security

- **x-api-key**
