# POST /tax-duty/v1/shipped

**Resource:** [Process TLC](../resources/Process-TLC.md)
**Report a shipment against a TLC transaction**
**Operation ID:** `TLCController_reportShipped`

Records one or more shipments made against a TLC transaction.

## Request Body

Includes the TLC transaction id, optional external reference ID and an array of tracking details (courier and tracking ID).

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ShippingReportRequest](../schemas/Shipping/ShippingReportRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Shipment reported successfully. |
| 400 | Bad Request - The payload is invalid or missing required fields. |
| 401 | Unauthorized - Invalid or missing API key in the request headers. |
| 404 | Not Found - No TLC transaction found for the provided ID. |
| 500 | Internal server error - An issue occurred while processing. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `message` | string | Yes |  |
| `externalReferenceId` | string | No | Only included when the transaction has an external reference id either already stored or set from this request. A different id in the request body does not overwrite a stored one. |
| `metadata` | object | No | The metadata from the request body |

## Security

- **x-api-key**
