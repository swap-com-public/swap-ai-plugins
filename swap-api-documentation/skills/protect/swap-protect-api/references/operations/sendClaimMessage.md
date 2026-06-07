# POST /claims/{claimId}/claim-message

**Resource:** [claims](../resources/claims.md)
**Send Claim Message**
**Operation ID:** `sendClaimMessage`

Validate and enqueue a claim message for downstream processing.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ClaimMessageRequest](../schemas/Claim/ClaimMessageRequest.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Claim message accepted and queued. |
| 400 | Bad Request |
| 401 | Unauthorized |
| 500 | Internal Server Error |

