# SetAddressDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `firstName` | string | Yes | The first name of the address |
| `lastName` | string | Yes | The last name of the address |
| `company` | string | No | The company name of the address |
| `address1` | string | Yes | The first line of the address |
| `address2` | string | No | The second line of the address |
| `city` | string | Yes | The city of the address |
| `province` | string | No | The province of the address |
| `countryCode` | string | Yes | The country code of the address |
| `zip` | string | Yes | The zip code of the address |
| `phone` | string | No | The phone number of the address |
| `email` | string | No | The email of the address |
| `setDefault` | boolean | No | Whether to set this address as the user's default saved address. |
| `addressId` | string | No | ID of an existing saved address to update. |

