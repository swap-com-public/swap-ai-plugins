---
name: swap-tlc-api
description: API for calculating duties, taxes, and fees for cross-border shipments. Use when working with the SWAP's TLC API or when the user needs to interact with this API.
metadata:
  api-version: "1.0"
  openapi-version: "3.0.0"
---

# SWAP's TLC API

API for calculating duties, taxes, and fees for cross-border shipments

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 1 resource index files
├── operations/     # 7 operation detail files
└── schemas/        # 18 schema groups, 21 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://tlc.api-swap-os.com` - Production - Live environment
- `https://sandbox-tlc.api-swap-os.com` - Sandbox / UAT - For testing and integration

## Authentication

Supported methods: **x-api-key**. See `references/authentication.md` for details.

## Resources

- **Process TLC** → `references/resources/Process-TLC.md` (7 ops)
