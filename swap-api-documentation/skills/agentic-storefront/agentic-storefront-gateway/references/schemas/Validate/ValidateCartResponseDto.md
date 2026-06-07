# ValidateCartResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `previousCart` | any | Yes | The cart state before validation |
| `currentCart` | any | Yes | The cart state after validation (with updated prices/quantities) |
| `hasChanges` | boolean | Yes | Whether any changes were made to the cart |

