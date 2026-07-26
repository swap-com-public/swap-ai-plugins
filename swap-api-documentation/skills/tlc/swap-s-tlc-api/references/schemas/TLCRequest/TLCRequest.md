# TLCRequest

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `storeName` | string | Yes | The name of the store |
| `saleType` | enum: B2B, B2C | No | The type of the sale. Optional, defaults to B2C. |
| `addresses` | any | Yes | The addresses of the store |
| `shipping` | any | Yes | The shipping rate |
| `currencyCode` | string | Yes | The ISO currency code (e.g. USD, GBP, EUR) used in the transaction. |
| `externalReferenceId` | string | No | External order ID |
| `lines` | TLCLineItemRequest[] | Yes | The items in the order, Last item is the shipping cost! |
| `taxIdentifiers` | TLCTaxIdentifier[] | No | The tax identifiers of the store. |
| `metadata` | object | No | Optional metadata key-value pairs of strings, keys and values can be anything, max total size is 500 bytes |

