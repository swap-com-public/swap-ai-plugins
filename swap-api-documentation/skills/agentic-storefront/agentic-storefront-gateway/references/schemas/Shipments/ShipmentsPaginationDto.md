# ShipmentsPaginationDto

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `total` | number | Yes | Total number of shipments matching the filters |
| `limit` | number | Yes | Requested page size |
| `page` | number | Yes | Current page number (1-based) |
| `hasMore` | boolean | Yes | Whether more shipments exist after this page |

