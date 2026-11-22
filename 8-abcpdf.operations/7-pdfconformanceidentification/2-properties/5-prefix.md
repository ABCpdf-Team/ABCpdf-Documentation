# Prefix Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | The schema namespace prefix. |

## Notes

This property indicates the schema namespace prefix. For PDF/A, the value is "pdfaid"; for PDF/UA, the value is "pdfuaid".

[EffectiveConformance](effectiveconformance.md) may be Pdf when [Part](1-part.md) is invalid or indicates a recent specification which PdfConformance does not include. In that case, you can use Prefix to identify the conformance.
