# GET /v1/shipments

**Resource:** [Shipment](../resources/Shipment.md)
**Get shipments**
**Operation ID:** `ShipmentController_getShipments_v1`

Get shipments filtered by platform order identifier or tracking number, enriched with tracking events and carrier when available

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `platformOrderIdentifier` | query | string | No | Filter shipments by the storefront or platform order reference (for example the order name or number shown to the shopper). |
| `trackingNumber` | query | string | No | Filter shipments by tracking number |
| `userEmail` | query | string | No | When set, scopes shipment tracking to the user with this email. Use with a Bearer ID token for the same account. |
| `x-store-id` | header | string | Yes | Store identifier. |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Returns a list of shipments (empty when none match), enriched with tracking when available |
| 400 | Bad Request — invalid path/query/body or failed pipe validation. |
| 401 | Unauthorized — missing or invalid credentials (gateway or downstream). |
| 403 | Forbidden — insufficient permissions for this resource. |
| 404 | Not Found — resource does not exist or is not visible to the caller. |
| 422 | Unprocessable Entity — semantic validation failed (e.g. checkout session state). |
| 429 | Too Many Requests — gateway rate limit. |
| 500 | Internal Server Error — unexpected failure (see `message`; may be sanitized in prod/staging). |
| 502 | Bad Gateway — gateway could not complete the proxied request to a downstream service. |
| 503 | Service Unavailable — dependency unavailable (e.g. cart/checkout upstream). |

**Success Response Schema:**

[GetShipmentsResponseDto](../schemas/Get/GetShipmentsResponseDto.md)

## Security

- **BearerAuth**
