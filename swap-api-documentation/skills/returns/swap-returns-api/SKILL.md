---
name: swap-returns-api
description: API for accessing return data and managing quality control updates for Swap Commerce stores.. Use when working with the Swap Returns API or when the user needs to interact with this API.
metadata:
  api-version: "1.0.0"
  openapi-version: "3.0.3"
---

# Swap Returns API

API for accessing return data and managing quality control updates for Swap Commerce stores.

## How to Use This Skill

This API documentation is split into multiple files for on-demand loading.

**Directory structure:**
```
references/
├── resources/      # 2 resource index files
├── operations/     # 3 operation detail files
└── schemas/        # 4 schema groups, 12 schema files
```

**Navigation flow:**
1. Find the resource you need in the list below
2. Read `references/resources/<resource>.md` to see available operations
3. Read `references/operations/<operation>.md` for full details
4. If an operation references a schema, read `references/schemas/<prefix>/<schema>.md`

## Base URL

- `https://api-gateway.swap-os.com/returns-api`

## Authentication

Supported methods: **ApiKeyAuth**. See `references/authentication.md` for details.

## Resources

- **External Returns** → `references/resources/External-Returns.md` (2 ops) - Endpoints for retrieving return data
- **Quality Control** → `references/resources/Quality-Control.md` (1 ops) - Endpoints for managing quality control updates
