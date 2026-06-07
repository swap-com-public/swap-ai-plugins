# ClaimState

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `status` | object | Yes |  |
| `reason` | string | Yes |  |
| `reasonComment` | string | Yes |  |
| `resolution` | any | Yes |  |

## Nested Fields

### `status`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `claimStatus` | [ClaimStatus](ClaimStatus.md) | Yes |  |
| `updatedBy` | string | Yes |  |
| `deniedReason` | string | No |  |
| `approvalNote` | string | No |  |

