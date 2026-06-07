# GetCartResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `cartId` | string | Yes | The cart ID. |
| `userId` | string | Yes | The user ID. |
| `storeId` | string | Yes | The Swap store ID. |
| `items` | LineItemDto[] | Yes | The items in the cart. |
| `totals` | any | Yes | The totals in the cart. |
| `status` | enum: active, checked_out, ordered | No | The status of the cart. |
| `updatedAt` | string | No | The updated at timestamp. |

