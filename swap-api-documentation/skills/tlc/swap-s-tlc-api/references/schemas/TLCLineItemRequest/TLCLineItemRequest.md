# TLCLineItemRequest

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `quantity` | number | Yes | The quantity of the item |
| `amount` | number | Yes | The taxable item amount (pre Duty and Tax) |
| `hsCode` | string | Yes | The HS code of the item |
| `description` | string | No | The item title |
| `summary` | string | No | The item summary |
| `category` | string | No | The item category |
| `countryOfManufacture` | string | Yes | The country of manufacture |
| `externalId` | string | No | Optional external ID for the item, can be used for mapping |

