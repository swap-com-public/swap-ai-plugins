# POST /v1/external/quality-control/update

**Resource:** [Quality Control](../resources/Quality-Control.md)
**Update quality control**
**Operation ID:** `updateQualityControl`

## Parameters

| Name | In | Type | Required | Description |
|------|------|------|----------|-------------|
| `X-API-Key` | header | string | Yes | API key for authentication (required at runtime by ApiKeyGuard) |

## Request Body

**Required:** Yes

**Content Types:** `application/json`

**Schema:** [QualityControlUpdateDto](../schemas/Quality/QualityControlUpdateDto.md)

## Responses

| Status | Description |
|--------|-------------|
| 200 | Quality control update processed successfully |

**Success Response Schema** (inline):

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `message` | string | Yes |  |

