# TerminateCheckoutSessionResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `success` | boolean | Yes | Whether the checkout session has been successfully terminated. |
| `sessionId` | string | Yes | The ID of the checkout session. |
| `status` | enum: draft, payment_ready, payment_processing... | Yes | The status of the checkout session. |

