# UserDataManagementModel

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `userId` | string | Yes |  |
| `jobId` | string | Yes |  |
| `jobType` | [UserDataManagementJobType](UserDataManagementJobType.md) | Yes |  |
| `status` | [UserDataManagementJobStatus](UserDataManagementJobStatus.md) | Yes |  |
| `swapId` | string | Yes |  |
| `errorMessage` | string | No |  |
| `completedAt` | string (date-time) | No |  |
| `cancelledAt` | string (date-time) | No |  |
| `downloadedAt` | string (date-time) | No |  |
| `downloadUrl` | string | No |  |
| `expiresAt` | string (date-time) | No |  |
| `scheduledAt` | string (date-time) | No |  |
| `exportGsPath` | string | No |  |
| `audit` | object | No |  |

