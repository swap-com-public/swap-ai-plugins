# ProductModel

Product payload from @window-shop/entities ProductModel.

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `postgresId` | integer | Yes |  |
| `documentId` | string | Yes |  |
| `shopifyGid` | string | Yes |  |
| `name` | string | Yes |  |
| `handle` | string | Yes |  |
| `description` | string | No |  |
| `apparelCategoryTopLevel` | string | Yes |  |
| `brand` | string | Yes |  |
| `images` | object[] | No |  |
| `variants` | object[] | No |  |
| `humanModelImageIndex` | integer | Yes |  |
| `flatGarmentImageIndex` | integer | No |  |
| `collectionNames` | string[] | No |  |
| `isSavedProduct` | boolean | No |  |
| `nudgeTexts` | string[] | No |  |
| `suggestedVariantIndex` | integer | No |  |
| `vendor` | object | No |  |

## Nested Fields

### `images`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `gsPath` | string | No |  |
| `featured` | boolean | No |  |

