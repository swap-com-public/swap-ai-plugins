# PATCH /tax-duty/v1/void

**Resource:** [Process TLC](../resources/Process-TLC.md)
**Report that a TLC transaction has been voided**
**Operation ID:** `TLCController_voidTransaction`

Records a voided TLC transaction.

## Request Body

The Voided Transaction includes the existing reference id,  and an optional reason for voiding it.

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [VoidedTransaction](../schemas/Voided/VoidedTransaction.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Transaction voided successfully. |
| 400 | Bad Request - The payload is invalid or missing required fields. |
| 401 | Unauthorized - Invalid or missing API key in the request headers. |
| 404 | Not Found - No TLC transaction found for the provided ID. |
| 500 | Internal server error - An issue occurred while processing. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `message` | string | Yes |  |
| `metadata` | object | No | The metadata from the request body |

## Security

- **x-api-key**
