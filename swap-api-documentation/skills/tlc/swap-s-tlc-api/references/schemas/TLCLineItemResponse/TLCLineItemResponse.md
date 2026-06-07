# TLCLineItemResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `amount` | number | Yes | The amount of the item |
| `hsCode` | string | Yes | The HS code of the item |
| `description` | string | No | The item title |
| `summary` | string | No | The item summary |
| `category` | string | No | The item category |
| `import` | any | Yes | The import fee of the item |
| `taxDuty` | any | Yes | The tax and duty of the item |
| `externalId` | string | No | The same external ID sent in the request, if provided |

