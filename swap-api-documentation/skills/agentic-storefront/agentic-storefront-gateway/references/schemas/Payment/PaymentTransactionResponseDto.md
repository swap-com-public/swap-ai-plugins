# PaymentTransactionResponseDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `resultCode` | string | Yes | The result code of the payment. |
| `actionJSON` | string | Yes | The JSON encoded payment action object. It used by third-party payment libraries to handle the additional action required to complete the payment. |
| `refusalReason` | string | Yes | The reason for the refusal. |

