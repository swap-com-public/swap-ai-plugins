# UpdateCartItemResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `cartId` | string | Yes | The cart ID. |
| `updatedItem` | any | Yes | The updated cart item. |
| `itemSubtotal` | number | Yes | The subtotal of the item. |
| `totals` | any | Yes | The totals in the cart. |
| `items` | LineItemDto[] | Yes | All items currently in the cart. |

