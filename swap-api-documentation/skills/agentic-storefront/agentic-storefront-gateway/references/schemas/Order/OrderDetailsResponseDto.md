# OrderDetailsResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string | Yes | The ID of the order |
| `orderNumber` | string | Yes | The number of the order |
| `status` | enum: pending, paid, fulfilled... | Yes | The status of the order |
| `lineItems` | LineItemDto[] | Yes | The product line items of the order |
| `totals` | any | Yes | The totals of the order |
| `billingAddress` | any | No | The billing address of the order |
| `shippingAddress` | any | No | The shipping address of the order |
| `customerEmail` | string | Yes | The customer email |
| `externalReferences` | any | Yes | The external references of the order. These properties are platform specific. Null when the order is pending and platform processing has not completed yet. |
| `notes` | string | No | The notes of the order |
| `tags` | string[] | No | The tags of the order |
| `createdAt` | string | Yes | The created at timestamp of the order |
| `paymentMethod` | any | Yes | The payment method used to pay for the order |
| `paymentStatus` | any | Yes | The status of the payment |

