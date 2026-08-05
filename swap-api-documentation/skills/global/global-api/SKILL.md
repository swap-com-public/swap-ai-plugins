---
name: global-api
description: Global API documentation. Use when working with the Global API or when the user needs to interact with this API.
metadata:
  api-version: "1.0.0"
  openapi-version: "3.0.0"
---

# Global API

Global API documentation

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 1 resource index files
├── operations/     # 5 operation detail files
└── schemas/        # 6 schema groups, 10 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://prod-global-server.api-swap-os.com` - Production - Live environment
- `https://uat-global-server.api-swap-os.com` - Sandbox / UAT - For testing and integration

## Authentication

Supported methods: **x-api-key**. See `references/authentication.md` for details.

## Resources

- **Public** → `references/resources/Public.md` (5 ops)
