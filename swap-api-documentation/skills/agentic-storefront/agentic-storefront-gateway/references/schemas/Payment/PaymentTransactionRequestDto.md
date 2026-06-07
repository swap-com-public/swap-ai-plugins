# PaymentTransactionRequestDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `paymentMethodJSON` | string | Yes | The JSON encoded type and required details of a payment method to use. |
| `browserInfoJSON` | string | No | The JSON encoded browser information. |
| `riskDataJSON` | string | No | The JSON encoded risk data. |
| `billingAddress` | any | No | The billing address. |
| `shippingAddress` | any | No | The delivery address. |
| `returnUrl` | string | Yes | The full URL to redirect the user to after payment completion. |
| `origin` | string | Yes | The origin of the request. |

