# GET /v1/external/returns

**Resource:** [External Returns](../resources/External-Returns.md)
**List returns (V1)**
**Operation ID:** `getExternalReturnsV1`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `store` | query | string | Yes | The store id that the RMAs belong to |
| `from_date` | query | string (date-time) | No | Only orders that were created or modified on or after this date will be returned. Note: If submitted_at_from/submitted_at_to or last_updated_date are provided, they take priority over this filter |
| `to_date` | query | string (date-time) | No | Only orders that were modified before or on this date will be returned |
| `items_per_page` | query | integer | No | The number of items to return per page (max is 50) |
| `version` | query | integer | No | API version |
| `page` | query | integer | No | Page number to fetch |
| `last_updated_date` | query | string (date-time) | No | Only returns that were updated on or after this date will be returned. Note: If submitted_at_from/submitted_at_to is provided, it takes priority over this filter |
| `submitted_at_from` | query | string (date-time) | No | Only returns that were submitted on or after this date will be returned. Use with submitted_at_to for date range filtering |
| `submitted_at_to` | query | string (date-time) | No | Only returns that were submitted before or on this date will be returned. Use with submitted_at_from for date range filtering |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Successful response with list of returns |

**Success Response Schema:**

[ExternalReturnsResponseDto](../schemas/External/ExternalReturnsResponseDto.md)

