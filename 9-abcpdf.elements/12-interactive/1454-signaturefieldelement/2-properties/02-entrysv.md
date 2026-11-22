# EntrySV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`SignatureFieldSeedValueElement`](../../1455-signaturefieldseedvalueelement/index.md) | null | No | Represents the "SV" entry of the signature field object. |

## Notes

Represents the "SV" entry of the signature field object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a [SignatureFieldSeedValueElement](../../1455-signaturefieldseedvalueelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 232, page 446.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=454)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 235, page 540.](https://www.iso.org/standard/63534.html)

The seed value dictionary pre-configures the signing dialog, mandating or suggesting specific cryptographic algorithms, certificate requirements, and appearance options.
