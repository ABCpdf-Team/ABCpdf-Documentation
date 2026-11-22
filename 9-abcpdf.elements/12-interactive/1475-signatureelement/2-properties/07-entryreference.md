# EntryReference Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`SignatureReferenceElement`](../../1477-signaturereferenceelement/index.md)`>` | null | No | Represents the "Reference" entry of the signature dictionary object. |

## Notes

Represents the "Reference" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an array which contains [SignatureReferenceElements](../../1477-signaturereferenceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=476)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 566.](https://www.iso.org/standard/63534.html)

Each element of the Reference array is a signature reference dictionary describing a transform applied before hashing. Multiple entries can specify different transforms for different parts of the signed content.
