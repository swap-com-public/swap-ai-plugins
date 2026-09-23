# GET /public/v1/orders

**Resource:** [Public](../resources/Public.md)
**GET /orders**
**Operation ID:** `OrdersController_list`

Lists orders for the store authenticated by your API key.

Use this to look up orders after they have been created — for example to check status, destination, or totals. Create orders with [`POST /orders`](/products/global/global-reference/orders-controller-create/). That call is **Step 4 — Complete** in the Swap Global checkout flow: **[Classify](/products/global/global-reference/checkout-controller-classify/) → [optional Shipping rates](/products/global/global-reference/shipping-public-controller-calculate-rates/) → [Calculate](/products/global/global-reference/checkout-controller-calculate/) → Complete**.

**Call it when:** You need to list or filter the store's orders.

:::info Authentication
Authenticate with the `X-Api-Key` header. The store is inferred from the key; you do not pass a `storeId`.
:::

:::info Pagination
Results are page-based. `page` is **1-based** (default **1**). `pageSize` defaults to **10** and has a maximum of **100**. The response envelope repeats `page` and `pageSize` and includes `totalOrdersCount` and `totalPages`.

Orders are always sorted by `orderPlacedAt` descending. Sort query params are not supported in this version.
:::

:::info Filters
All filters are optional and combine as an AND:

- `name` — store order name (for example `#US-123`)
- `destinationCountries` — ISO 3166-1 alpha-2 codes as a comma-separated list (`?destinationCountries=US,CA`)
- `status` — **display** status, not the internal order status. Allowed values: `Order placed`, `Shipped`, `Cancelled`, `Returned`, `Partially returned`
- `startDate` / `endDate` — inclusive `orderPlacedAt` range as ISO date or datetime. Requests with `startDate` later than `endDate` are rejected.
:::

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `name` | query | string | No | Filter by store order name (i.e #US-123) |
| `destinationCountries` | query | any | Yes | ISO 3166-1 alpha-2 destination country codes as a comma-separated list. |
| `status` | query | enum: Order placed, Shipped, Cancelled... | No | Status filter (i.e "Order placed", "Shipped", "Cancelled") |
| `startDate` | query | any | No | Inclusive start of the orderPlacedAt filter (ISO date or datetime) |
| `endDate` | query | any | No | Inclusive end of the orderPlacedAt filter (ISO date or datetime) |
| `pageSize` | query | integer | No | Number of orders per page (default 10, max 100) |
| `page` | query | integer | No | One-based page index (default 1) |

## Responses

| Status | Description |
|--------|-------------|
| 200 | Paginated list of orders for the authenticated store |
| 400 | Invalid query parameters |
| 401 | Missing or invalid API key |
| 500 | Internal server error |

**Success Response Schema:**

[ListOrdersResponseDto](../schemas/List/ListOrdersResponseDto.md)

## Security

- **X-Api-Key**
