# POST /invoices/:carrier

**Resource:** [invoices](../resources/invoices.md)
**Retrieve invoices for an order**
**Operation ID:** `retrieveInvoices`

Get invoices

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `carrier` | path | string | Yes |  |
| `x-api-key` | header | string | Yes |  |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string,null | No | Either `orderId` or `orderName` is required, with `orderId` taking priority. |
| `orderName` | string,null | No | Either `orderId` or `orderName` is required, with `orderId` taking priority. |
| `items` | object[] | Yes | Filters the order's items by the provided fields.

The filters are all optional, and hence if none are provided then this will be ignored.

If multiple filters are provided then the filter priority is: `variantId` > `sku` > `productTitle` > `variantTitle`.

If none of the fields above match an item, the order items' barcodes are checked instead, using `barcode`, or `sku` if no `barcode` was sent. |
| `storeId` | string | Yes |  |

**`items` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string,null | No | An optional identifier that will be included in the response for you to match within your own system. |
| `variantId` | string,null | No |  |
| `sku` | string,null | No |  |
| `barcode` | string,null | No |  |
| `productTitle` | string,null | No |  |
| `variantTitle` | string,null | No |  |

## Responses

| Status | Description |
|--------|-------------|
| 200 | OK |
| 400 | Bad Request |
| 401 | Unauthorized |
| 404 | Not Found |
| 422 | Unprocessable Entity |
| 500 | Internal Server Error |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `orderId` | string,null | No |  |
| `orderName` | string,null | No |  |
| `storeId` | string | Yes |  |
| `shippingReferenceId` | string,null | No | Swap's internal shipping reference ID |
| `aesProofOfFilingCitation` | string,null | No | AES citation for the commercial invoice: the NOEEI exemption legend when EEI filing is not required, or the ITN once a required filing is accepted. Null when no determination applies. |
| `totalPaid` | number | Yes | Total paid including VAT and Duties |
| `totalVatPaid` | number | Yes |  |
| `totalDutiesPaid` | number | Yes |  |
| `currency` | string | Yes |  |
| `mode` | enum: B2C, B2B2C | Yes |  |
| `merchant` | object,null | No | Merchant branding (B2C and B2B2C) |
| `exporter` | object,null | No | Only present in B2B2C mode |
| `importer` | object,null | No | Only present in B2B2C mode |
| `consignee` | object,null | No | Only present in B2B2C mode |
| `shippingCost` | number,null | No | Shipping cost |
| `taxIdentifier` | object,null | No |  |
| `shippingRateAmount` | number,null | No | Shipping rate amount |
| `shippingTaxLines` | array,null | No | Itemised tax breakdown for shipping |
| `itemList` | object[] | Yes |  |
| `customFields` | object,null | No |  |

**`itemList` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | string,null | No | Your provided ID |
| `sku` | string,null | No |  |
| `barcode` | string | No |  |
| `variantId` | string,null | No |  |
| `productPrice` | number | Yes | Price of just the product alone, NOT including VAT and Duties or the quantity |
| `manufacturePrice` | number | No | Manufacture price of the product before discounts, VAT, Duties, or quantity |
| `preDiscountedPrice` | number | No | Unit price of the product before discounts, VAT, Duties, or quantity |
| `productVat` | number | Yes | cost of VAT for the product, quantity NOT taken into account |
| `productDuties` | number | Yes | cost of Duties for the product, quantity NOT taken into account |
| `linePrice` | number | Yes | Price of the product and quantity. does NOT including VAT and Duties |
| `lineVat` | number | Yes | cost of VAT for the line item, quantity taken into account |
| `lineDuties` | number | Yes | cost of Duties for the line item, quantity taken into account |
| `quantity` | number | Yes |  |
| `countryOfOrigin` | string,null | No | 2-letter ISO country code of origin for the item |
| `hsCode` | string,null | No | HS Code for this item |
| `manufacturerIdentificationCode` | string,null | No | Manufacturer Identification Code for this item |
| `customsDescription` | string,null | No | Description used at customs to identify the contents of the package |
| `merchantProductId` | string,null | No | Merchant product identifier (Shopify SKU) from Compliance Hub. SKU on the order remains the fallback. |
| `nonStandardProductId` | string,null | No | Manufacturer's own product code from Compliance Hub. For EU destinations with no manufacturer code, this is the standard product identifier (barcode / GTIN) from Compliance Hub, as EU customs guidance allows. Empty when neither is set. |
| `standardProductId` | string,null | No | Standard product identifier (barcode / GTIN) from Compliance Hub. For EU destinations with no standard product identifier in Compliance Hub, this is the order line barcode, or "NO" when there is no barcode either, as FedEx requires on the commercial invoice. |
| `cpscEfiling` | object,null | No | CPSC eFiling values for this line. A line is either disclaimed (disclaimCode, intendedUseCode, intendedUseDescription) or references a registered certificate (certifierId, registryProductId, productVersion), never both; the other trio is null. All six null means there is nothing to file. |
| `complianceDocuments` | object | No | Compliance documents keyed by document type code as base64 strings. |
| `taxLines` | array,null | No | Itemised tax breakdown |

