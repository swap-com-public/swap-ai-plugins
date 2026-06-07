# CreateCheckoutSessionResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `session` | any | Yes | The created checkout session. |
| `paymentSettings` | any | Yes | The platform-specific payment settings. This is used to create the payment component on the frontend. |
| `shippingRateConfigs` | ShippingRateConfigDto[] | Yes | The shipping rate configs. |
| `paymentMethods` | PaymentMethodDto[] | Yes | The payment method configs. |
| `paymentMethodsResponseJSON` | string | Yes | The raw payment methods response JSON from Adyen. Use to initialize the payment Drop-in component on the frontend. |
| `shippingAddress` | any | No | The latest known shipping address for the user, if any. |
| `customerEmail` | string | No | The latest known customer email for the user, if any. |

