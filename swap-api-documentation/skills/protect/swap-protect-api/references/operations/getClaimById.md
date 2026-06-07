# GET /claims/{claimId}

**Resource:** [claims](../resources/claims.md)
**Get Claim By ID**
**Operation ID:** `getClaimById`

Retrieve a claim scoped to the provider inferred from the API key.

## Responses

| Status | Description |
|--------|-------------|
| 200 | Claim retrieved successfully. |
| 401 | Unauthorized |
| 404 | Not Found |
| 500 | Internal Server Error |

