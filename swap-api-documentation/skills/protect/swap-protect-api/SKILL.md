---
name: swap-protect-api
description: API documentation for Swap Protect (orders and claims endpoints). Use when working with the Swap Protect API or when the user needs to interact with this API.
metadata:
  api-version: "1.0.0"
  openapi-version: "3.0.0"
---

# Swap Protect API

API documentation for Swap Protect (orders and claims endpoints)

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 2 resource index files
├── operations/     # 6 operation detail files
└── schemas/        # 15 schema groups, 28 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://prod-protect-integrations.api-swap-os.com/protect-integrations/api/v1`

## Authentication

Supported methods: **x-api-key**. See `references/authentication.md` for details.

## Resources

- **orders** → `references/resources/orders.md` (3 ops)
- **claims** → `references/resources/claims.md` (3 ops)
