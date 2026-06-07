# CreateCheckoutSessionRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `allowedPaymentMethods` | enum: card, applepay, googlepay... | No | The allowed payment methods for this session. |
| `chatId` | string | Yes | The chat ID associated with the chat session. |
| `userEmail` | string | No | The user email. |
| `shippingAddress` | any | No | The shipping address. Optional if using express checkout. |
| `billingAddress` | any | No | The billing address. If not provided, the shipping address will be used. |
| `shippingRateId` | string | No | The shipping rate config ID. |
| `discountCode` | string | No | The discount code. |

