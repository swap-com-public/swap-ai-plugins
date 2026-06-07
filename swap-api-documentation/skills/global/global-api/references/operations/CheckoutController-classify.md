# POST /public/v1/checkout/classify

**Resource:** [Public](../resources/Public.md)
**POST /checkout/classify**
**Operation ID:** `CheckoutController_classify`

Classifies your products into HS codes for customs and compliance.

HS codes are required to calculate import duties. You pass each item's title, description, and category — Swap returns the correct HS code.

This is **Step 1 — Classify** in the Swap Global checkout flow: **Classify → [optional Shipping rates](/products/global/global-reference/shipping-public-controller-calculate-rates/) → [Calculate](/products/global/global-reference/checkout-controller-calculate/) → [Complete](/products/global/global-reference/orders-controller-create/)**. See the [Checkout Flow](/products/global/checkout-flow) guide for the conceptual walkthrough.

[`/shipping/rates`](/products/global/global-reference/shipping-public-controller-calculate-rates/) is optional and can run before, after, or alongside this step when you use Swap-managed shipping zones.

:::info Item IDs must be stable across stages
The `id` you send for each item here must be the **same `id`** you use in `/shipping/rates`, `/checkout/calculate`, and `/orders`. If you use Shopify as your inventory source of truth, use the **`variant_id`** as the item id.
:::

:::warning Duplicate Items
Duplicate items will only be accepted in the `items` array if all fields are identical.

If two items have the same `id`, but other values differ, a validation error will be returned.
:::

**Call it when:** A customer reaches checkout, before calling `/checkout/calculate`.

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [ClassifyRequestDto](../schemas/Classify/ClassifyRequestDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 201 | Items successfully classified with HS codes |
| 400 | Invalid request body or validation errors |
| 401 | Missing or invalid API key |
| 500 | Internal server error or Firestore failure |
| 502 | Classifier service failure |
| 503 | Feature disabled |

**Success Response Schema:**

[ClassifyResponseDto](../schemas/Classify/ClassifyResponseDto.md)

## Security

- **x-api-key**
