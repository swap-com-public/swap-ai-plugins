# POST /tax-duty/v1/classification/hs-code

**Resource:** [Process TLC](../resources/Process-TLC.md)
**Requests a HS code**
**Operation ID:** `TLCController_requestClassification`

Sends a description (plus optional image URL and category and summary) and returns a new HS code

## Request Body

The Classification Request includes a required description (plus optional image URL and category and summary)

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ClassificationRequest](../schemas/Classification/ClassificationRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | HS code returned successfully. |
| 400 | Bad Request - The payload is invalid or missing required fields. |
| 401 | Unauthorized - Invalid or missing API key in the request headers. |
| 500 | Internal server error - An issue occurred while processing. |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `message` | string | No |  |
| `data` | [ClassificationResponse](../schemas/Classification/ClassificationResponse.md) | No |  |

## Security

- **x-api-key**
