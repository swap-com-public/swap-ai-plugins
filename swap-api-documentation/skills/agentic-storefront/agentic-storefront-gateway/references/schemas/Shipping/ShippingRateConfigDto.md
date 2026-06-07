# ShippingRateConfigDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string | Yes | The shipping rate config ID. |
| `type` | string | Yes | The shipping rate config type. |
| `label` | string | Yes | The shipping rate config label. |
| `value` | number | Yes | Amount charged for this option at the current cart subtotal (0 when `freeShippingThreshold` is met). |
| `active` | boolean | Yes | The shipping rate config active. |
| `isDefault` | boolean | No | The shipping rate config is default. |
| `description` | string | No | The shipping rate config description. |
| `eligibility` | [ShippingRateConfigEligibility](ShippingRateConfigEligibility.md) | No |  |
| `freeShippingThreshold` | number | No | Order subtotal at or above which this shipping option is free. |

