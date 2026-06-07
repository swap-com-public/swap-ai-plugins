# CheckoutSessionDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | The session ID. |
| `userId` | string | Yes | The user ID. |
| `storeId` | string | Yes | The store ID. |
| `cartId` | string | Yes | The cart ID. |
| `chatId` | string | Yes | The chat ID. |
| `status` | enum: draft, payment_ready, payment_processing... | Yes | The status of the checkout session. |
| `expiresAt` | string | Yes | The date and time when the checkout session expires. After this time, the session will be terminated and inventory reservation released. |
| `lineItems` | LineItemDto[] | Yes | The line items in the checkout session. |
| `totals` | any | Yes | The totals of the checkout session. |
| `orderId` | string | No | The order ID. |
| `error` | string | No | The error message. |
| `createdAt` | string | Yes | The created at timestamp of the session. |
| `shippingRateId` | string | No | The selected shipping rate ID. |
| `customerEmail` | string | No | The customer email. |
| `discountCode` | string | No | The discount code. |
| `discountCodeDetails` | any | No | The discount code details. |

