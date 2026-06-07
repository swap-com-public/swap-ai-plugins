# GET /claims/delivery-declaration/{claimId}

**Resource:** [claims](../resources/claims.md)
**Get Claim Delivery Declaration**
**Operation ID:** `getClaimDeliveryDeclaration`

Retrieve a temporary signed URL for the claim's delivery declaration PDF. The URL expires after 15 minutes. Access is scoped to the provider inferred from the API key.

## Responses

| Status | Description |
|--------|-------------|
| 200 | Signed URL generated successfully. |
| 401 | Unauthorized |
| 404 | Not Found |
| 500 | Internal Server Error |

