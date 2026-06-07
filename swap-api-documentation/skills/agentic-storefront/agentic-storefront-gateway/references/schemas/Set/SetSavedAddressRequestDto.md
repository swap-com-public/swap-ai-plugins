# SetSavedAddressRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `countryCode` | string | Yes | ISO 3166-1 alpha-2 country code |
| `addressLine1` | string | Yes | Primary address line (street, house number, etc.) |
| `addressLine2` | string | No | Secondary address line (apartment, suite, unit, etc.) |
| `city` | string | No | City or locality |
| `region` | string | No | State, province, or region |
| `postalCode` | string | No | Postal or ZIP code |
| `fullName` | string | No | Recipient full name |
| `phone` | string | Yes | Phone number associated with this address |
| `email` | string | No | Contact email associated with this address |
| `isDefault` | boolean | No | Whether this is the default address for the client |

