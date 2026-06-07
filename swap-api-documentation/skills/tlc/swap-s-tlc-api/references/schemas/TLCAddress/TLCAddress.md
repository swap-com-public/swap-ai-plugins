# TLCAddress

**Type:** object

## Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `city` | string | No | The city of the address. Optional for SG, HK, MO, MC, SM, VA, LI, AE, QA, KW, BH, SA, IE. |
| `region` | string | No | The region of the address. Optional, but if supplied must be a valid non-empty string.<p><b>Required for US addresses and should be the state.</b></p> |
| `postalCode` | string | No | The postal code of the address, not required for HK, SG, AE |
| `country` | string | Yes | The country code of the address |

