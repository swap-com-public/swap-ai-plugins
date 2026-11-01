# POST /label

**Resource:** [Labels](../resources/Labels.md)
**Create a shipping label**
**Operation ID:** `post--label`

Create a shipping label for an order.

If we can match the order in our system, we'll fill in each item's customs details — the HS code, value, and description — from the order we have on file, so they're as accurate as possible. If we can't find a matching order, we'll use the values you send in the request instead.

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `x-api-key` | header | string | Yes |  |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `serviceCode` | string | Yes | The service code for the label to be created. Must be one of the following:


- **`FEDEX-INTL-CONNECT-PLUS-DDP`** - FedEx International Connect Plus DDP
- **`FEDEX-INTL-PRIORITY-DDP`** - FedEx International Priority DDP |
| `reference` | string | No | An optional reference for your internal tracking (e.g., your own ID). |
| `collectionDate` | string (date) | Yes | The date the shipment is expected to be collected, must either today or in the future. |
| `deliveryInstructions` | string | No |  |
| `metadata` | object | No | Optional set of key-value pairs (both keys and values must be strings) for your own use, e.g. internal identifiers. The combined size of all keys and values must not exceed 500 bytes. It is persisted against the label and returned in the response. |
| `shipFrom` | object | Yes |  |
| `shipTo` | object | Yes |  |
| `parcels` | object[] | Yes | List of parcels to be shipped |
| `orderId` | string | No | The ID of the order from the e-commerce platform e.g. Shopify order ID.
Either `orderId` or `orderName` is required, with `orderId` taking priority. |
| `orderName` | string | No | The name of the order from the e-commerce platform e.g. Shopify order name.
Either `orderId` or `orderName` is required, with `orderId` taking priority. |
| `storeId` | string | Yes |  |

**`shipFrom` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | Yes |  |
| `companyName` | string | No |  |
| `phone` | string | Yes |  |
| `email` | string | No |  |
| `addressLine1` | string | Yes |  |
| `addressLine2` | string | No |  |
| `addressLine3` | string | No |  |
| `city` | string | Yes |  |
| `county` | string | No |  |
| `postcode` | string | No | The postcode is required for most countries, but optional for a few. |
| `country` | enum: AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, CV, KH, CM, CA, KY, CF, TD, CL, CN, CX, CC, CO, KM, CD, CG, CK, CR, HR, CU, CW, CY, CZ, CI, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, SZ, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MK, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RO, RU, RW, RE, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TM, TC, TV, TR, UG, UA, AE, GB, UM, US, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, AX | Yes |  |
| `taxId` | string | No |  |
| `eoriId` | string | No |  |
| `ukimsNumber` | string | No |  |
| `iossNumber` | string | No |  |

**`shipTo` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | Yes |  |
| `companyName` | string | No |  |
| `phone` | string | Yes |  |
| `email` | string | No |  |
| `addressLine1` | string | Yes |  |
| `addressLine2` | string | No |  |
| `addressLine3` | string | No |  |
| `city` | string | Yes |  |
| `county` | string | No |  |
| `postcode` | string | No | The postcode is required for most countries, but optional for a few. |
| `country` | enum: AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, CV, KH, CM, CA, KY, CF, TD, CL, CN, CX, CC, CO, KM, CD, CG, CK, CR, HR, CU, CW, CY, CZ, CI, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, SZ, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MK, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RO, RU, RW, RE, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TM, TC, TV, TR, UG, UA, AE, GB, UM, US, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, AX | Yes |  |
| `taxId` | string | No |  |
| `eoriId` | string | No |  |
| `ukimsNumber` | string | No |  |
| `iossNumber` | string | No |  |

**`parcels` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `boxWidth` | number | Yes | In centimetres (cm) |
| `boxHeight` | number | Yes | In centimetres (cm) |
| `boxLength` | number | Yes | In centimetres (cm) |
| `items` | object[] | Yes |  |

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
| `id` | string | Yes | Swap generated label ID |
| `serviceCode` | string | Yes | The service code used to create the label |
| `labelSize` | string | Yes |  |
| `tracking` | object[] | Yes |  |
| `labels` | object | Yes | Label payloads returned for the shipment. `pdf`, `png` and `zpl` are optional, but at least one of them will be provided. |
| `commercialInvoiceUrl` | string | No | The commercial invoice URL provided by the Swap |
| `courier` | string | Yes | The courier used to create the label |
| `reference` | string | No | The reference provided by the user |
| `metadata` | object | No | The metadata key-value pairs provided when the label was created. |

**`tracking` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `trackingNumber` | string | Yes | The tracking number for the label provided by the courier |
| `trackingUrl` | string | No | The tracking URL provided by the courier |

**`labels` fields:**

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `pdf` | string[] | No | Optional downloadable PDF label URLs. Provided when the courier returns PDF labels. |
| `zpl` | string[] | No | Optional base64-encoded ZPL label payloads. Provided when the courier returns ZPL labels. |
| `png` | string[] | No | Optional downloadable PNG URLs. Provided when the courier returns a PNG. |

