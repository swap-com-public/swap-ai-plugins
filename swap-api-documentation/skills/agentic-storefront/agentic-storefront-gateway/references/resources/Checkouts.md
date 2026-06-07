# Checkouts

## Operations

| Method | Path | Summary | Details |
|--------|------|---------|----------|
| POST | `/v1/checkouts` | Initiate a checkout session | [View](../operations/CheckoutsController-createCheckoutSession-v1.md) |
| GET | `/v1/checkouts/{sessionId}` | Get a checkout session | [View](../operations/CheckoutsController-getCheckoutSession-v1.md) |
| POST | `/v1/checkouts/{sessionId}/terminate` | Terminate a checkout session | [View](../operations/CheckoutsController-terminateCheckoutSession-v1.md) |
| PATCH | `/v1/checkouts/{sessionId}/shipping-address` | Update checkout session shipping address | [View](../operations/CheckoutsController-updateCheckoutSessionAddress-v1.md) |
| PATCH | `/v1/checkouts/{sessionId}/customer-email` | Update checkout session customer email | [View](../operations/CheckoutsController-updateCheckoutSessionCustomerEmail-v1.md) |
| DELETE | `/v1/checkouts/{sessionId}/discount-code` | Remove discount code from checkout session | [View](../operations/CheckoutsController-removeDiscountCode-v1.md) |
| PATCH | `/v1/checkouts/{sessionId}/discount-code` | Apply discount code to checkout session | [View](../operations/CheckoutsController-applyDiscountCode-v1.md) |
| POST | `/v1/checkouts/{sessionId}/shipping-address/validate` | Validate a shipping address | [View](../operations/CheckoutsController-validateShippingAddress-v1.md) |
| PATCH | `/v1/checkouts/{sessionId}/shipping-rate` | Update checkout session shipping rate | [View](../operations/CheckoutsController-updateCheckoutSessionShippingRate-v1.md) |
| POST | `/v1/checkouts/{sessionId}/payment` | Start a payment transaction | [View](../operations/CheckoutsController-startPaymentTransaction-v1.md) |
| POST | `/v1/checkouts/{sessionId}/payment-details` | Used to provide necessary details for the payment of a transaction | [View](../operations/CheckoutsController-providePaymentDetails-v1.md) |
