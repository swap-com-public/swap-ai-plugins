# TLCBulkRequest

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `storeName` | string | Yes | The name of the store |
| `addresses` | any | Yes | The addresses of the store |
| `taxIdentifiers` | TLCTaxIdentifier[] | No |  |
| `shippingRates` | TLCShippingRate[] | Yes | List of shipping rates |
| `currencyCode` | string | Yes | The ISO currency code (e.g. USD, GBP, EUR) used in the transaction. |
| `externalReferenceId` | string | No | External order ID |
| `lines` | TLCLineItemRequest[] | Yes | The items in the order, Last item is the shipping cost! |
| `metadata` | object | No | Optional metadata key-value pairs of strings, keys and values can be anything, max total size is 500 bytes |

