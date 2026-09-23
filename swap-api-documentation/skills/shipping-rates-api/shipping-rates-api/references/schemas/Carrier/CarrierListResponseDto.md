# CarrierListResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `carriers` | object[] | Yes |  |

## Nested Fields

### `carriers`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `key` | string | Yes |  |
| `displayName` | string | Yes |  |
| `services` | object[] | Yes |  |

#### `carriers.services`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `key` | string | Yes |  |
| `displayName` | string | Yes |  |
| `originCountryCode` | string | Yes | A valid ISO 3166-1 alpha-2 country code |
| `destinationCountryCodes` | string[] | Yes |  |

