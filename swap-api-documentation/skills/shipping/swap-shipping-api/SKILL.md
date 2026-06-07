---
name: swap-shipping-api
description: API documentation for Swap Shipping. Use when working with the Swap Shipping API or when the user needs to interact with this API.
metadata:
  api-version: "1.0.96"
  openapi-version: "3.1.0"
---

# Swap Shipping API

API documentation for Swap Shipping

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 2 resource index files
├── operations/     # 3 operation detail files
└── schemas/        # 0 schema groups, 0 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://api-gateway.swap-os.com/shipping/v1/public` - Production - Live environment
- `https://sandbox-apigw.swap-os.com/shipping/v1/public` - Sandbox / UAT - For testing and integration

## Authentication

Supported methods: **x-api-key**. See `references/authentication.md` for details.

## Resources

- **Labels** → `references/resources/Labels.md` (2 ops)
- **invoices** → `references/resources/invoices.md` (1 ops)
