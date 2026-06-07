# PATCH /v1/carts/items/{variantId}

**Resource:** [Carts](../resources/Carts.md)
**Update product item quantity in cart**
**Operation ID:** `CartsController_updateItem_v1`

Update the quantity of a product item in the cart.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `variantId` | path | string | Yes | The external product variant ID. |
| `x-store-id` | header | string | Yes | Store identifier. |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [UpdateCartItemRequestDto](../schemas/Update/UpdateCartItemRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | The quantity of the product item in the cart has been successfully updated. |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |
| 503 | Service Unavailable — dependency unavailable (e.g. cart/checkout upstream). |

**Success Response Schema:**

[UpdateCartItemResponseDto](../schemas/Update/UpdateCartItemResponseDto.md)

## Security

- **BearerAuth**
