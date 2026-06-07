# GET /v2/external/returns

**Resource:** [External Returns](../resources/External-Returns.md)
**List returns (V2)**
**Operation ID:** `getExternalReturnsV2`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `swap_store_id` | query | string | Yes | The store id that the RMAs belong to |
| `rma_number` | query | string | No | Filter by specific RMA number |
| `shopify_order_name` | query | string | No | Filter by Shopify order name (#1234 format) |
| `customer_email` | query | string | No | Filter by customer email address |
| `from_return_submission_date` | query | string (date-time) | No | Start date for return submission date range |
| `to_return_submission_date` | query | string (date-time) | No | End date for return submission date range |
| `last_RMA_updated_date` | query | string (date-time) | No | Filter by last RMA update date |
| `api_version` | query | integer | No | API version |
| `items_per_page` | query | integer | No | Number of items per page (max is 100) |
| `page` | query | integer | No | Page number to fetch |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Successful response with list of returns |

**Success Response Schema:**

[ExternalReturnsV2ResponseDto](../schemas/External/ExternalReturnsV2ResponseDto.md)

