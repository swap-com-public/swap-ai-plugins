# ShippingReportRequest

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | The referenceId returned from the TLC API |
| `externalReferenceId` | string | No | External reference ID |
| `trackingDetails` | ShippingReportCourier[] | Yes | List of shipments, including courier and tracking details |
| `metadata` | object | No | Optional metadata key-value pairs of strings, keys and values can be anything, max total size is 500 bytes |

