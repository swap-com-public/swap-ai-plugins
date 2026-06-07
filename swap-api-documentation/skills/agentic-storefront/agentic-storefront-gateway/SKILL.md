---
name: agentic-storefront-gateway
description: REST API for Agentic Storefront integrations. Use the Servers list for environment base URLs.. Use when working with the Agentic Storefront Gateway or when the user needs to interact with this API.
metadata:
  api-version: "1.0.0"
  openapi-version: "3.0.0"
---

# Agentic Storefront Gateway

REST API for Agentic Storefront integrations. Use the Servers list for environment base URLs.

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 17 resource index files
├── operations/     # 45 operation detail files
└── schemas/        # 57 schema groups, 113 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://dev-ws-gateway.api-swap-os.com` - Development - Latest changes; least stable
- `https://uat-ws-gateway.api-swap-os.com` - UAT - Closer to production; still not a formal SLA
- `https://prod-ws-gateway.api-swap-os.com` - Production - Stable

## Authentication

Supported methods: **BearerAuth**, **ClientPublicKey**. See `references/authentication.md` for details.

## Resources

- **Checkouts** → `references/resources/Checkouts.md` (11 ops)
- **UserProfileSettingsDetailsApi** → `references/resources/UserProfileSettingsDetailsApi.md` (7 ops)
- **DataManagementApi** → `references/resources/DataManagementApi.md` (5 ops)
- **Stores** → `references/resources/Stores.md` (5 ops)
- **Carts** → `references/resources/Carts.md` (3 ops)
- **Orders** → `references/resources/Orders.md` (2 ops)
- **TrackingConsentApi** → `references/resources/TrackingConsentApi.md` (2 ops)
- **Shipment** → `references/resources/Shipment.md` (1 ops)
- **Wire** → `references/resources/Wire.md` (1 ops)
- **Chat** → `references/resources/Chat.md` (1 ops)
- **Conversations** → `references/resources/Conversations.md` (1 ops)
- **NicknameJudge** → `references/resources/NicknameJudge.md` (1 ops)
- **SizeCategory** → `references/resources/SizeCategory.md` (1 ops)
- **VtoEvents** → `references/resources/VtoEvents.md` (1 ops)
- **Layercode** → `references/resources/Layercode.md` (1 ops)
- **Products** → `references/resources/Products.md` (1 ops)
- **Product** → `references/resources/Product.md` (1 ops)
