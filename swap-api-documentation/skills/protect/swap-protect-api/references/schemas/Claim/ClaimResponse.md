# ClaimResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `claimId` | string | Yes |  |
| `storeDomain` | string | Yes |  |
| `storeName` | string | Yes |  |
| `orderId` | string | Yes |  |
| `claimCreatedTimestamp` | string (date-time) | Yes |  |
| `customer` | [Customer](Customer.md) | Yes |  |
| `products` | ClaimProduct[] | Yes |  |
| `customerClaimImages` | string[] | No |  |
| `reason` | [ClaimReason](ClaimReason.md) | Yes |  |
| `resolutionPreference` | [ClaimResolutionPreference](ClaimResolutionPreference.md) | Yes |  |
| `reasonNote` | string | Yes |  |
| `state` | [ClaimState](ClaimState.md) | Yes |  |
| `reimbursementState` | object | Yes |  |

## Nested Fields

### `reimbursementState`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `status` | [ReimbursementStatus](ReimbursementStatus.md) | Yes |  |
| `value` | number | Yes |  |
| `currency` | [CurrencyCode](CurrencyCode.md) | Yes |  |

