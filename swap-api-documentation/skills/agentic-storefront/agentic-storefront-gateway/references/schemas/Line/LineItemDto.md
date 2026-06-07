# LineItemDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `variantId` | string | Yes | The external product variant ID. |
| `productId` | string | Yes | The external product ID. |
| `quantity` | number | Yes | The quantity of the item. |
| `title` | string | Yes | The title of the item. |
| `variantTitle` | string | No | The variant title of the item. |
| `imageUrl` | string | Yes | The image URL of the item. |
| `price` | number | Yes | The price of the item. |
| `pricing` | any | Yes | The price and currency of the item. |
| `availableForSale` | boolean | Yes | Whether the item is available for sale. |
| `removedFromSale` | boolean | Yes | Whether the item variant has been removed from sale. |
| `sku` | string | No | The SKU of the item. |
| `variantColor` | string | No | The color of the variant of the item |
| `variantSize` | string | No | The size of the variant of the item |

