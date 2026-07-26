# TLCBulkResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `saleType` | enum: B2B, B2C | Yes | The type of the sale used for the calculation |
| `metadata` | object | No | The metadata from the request body |
| `externalReferenceId` | string | No | External order ID |
| `calculatedRates` | TLCResponse[] | Yes | The calculated rates for each request |

