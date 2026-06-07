# TLCResponse

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | ID of the request for tracking purposes |
| `carrierName` | string | Yes | The name of the carrier |
| `serviceCode` | string | Yes | The service code of the carrier |
| `totalAmount` | number | Yes | The total amount of the order |
| `totalTax` | number | Yes | The total tax of the order |
| `totalDuty` | number | Yes | The total duty of the order |
| `totalImportFees` | number | Yes | The total import fees of the order |
| `importFees` | any | No | Import fees breakdown for the order |
| `externalReferenceId` | string | No | External order ID |
| `lineItems` | TLCLineItemResponse[] | Yes | Line items tax, duty, and import fee breakdown. Shipping is the last item in this array for backwards compatibility |
| `shipping` | any | Yes | Shipping tax, duty, and import fee breakdown |
| `metadata` | object | No | The metadata from the request body |

