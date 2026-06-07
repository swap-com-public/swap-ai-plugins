# Process TLC

## Operations

| Method | Path | Summary | Details |
|--------|------|---------|----------|
| POST | `/tax-duty/v1/process` | Compute TLC for a cross-border shipment | [View](../operations/TLCController-createTransaction.md) |
| POST | `/tax-duty/v1/process/bulk/orders` | Compute TLC for a cross-border shipment in bulk | [View](../operations/TLCController-createTransactionBulk.md) |
| POST | `/tax-duty/v1/process/bulk/carriers` | Compute TLC for multiples cross-border shipments in bulk | [View](../operations/TLCController-createBulkTransaction.md) |
| POST | `/tax-duty/v1/shipped` | Report a shipment against a TLC transaction | [View](../operations/TLCController-reportShipped.md) |
| PATCH | `/tax-duty/v1/void` | Report that a TLC transaction has been voided | [View](../operations/TLCController-voidTransaction.md) |
| POST | `/tax-duty/v1/classification/hs-code` | Requests a HS code | [View](../operations/TLCController-requestClassification.md) |
| POST | `/tax-duty/v1/process/validate` | Validate TLC for a cross-border shipment | [View](../operations/TLCController-processValidate.md) |
