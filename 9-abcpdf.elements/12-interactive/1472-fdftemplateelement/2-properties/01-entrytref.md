# EntryTRef Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FDFNamedPageReferenceElement`](../../1472-fdfnamedpagereferenceelement/index.md) | null | No | Represents the "TRef" entry of the fdf template dictionary object. |

## Notes

Represents the "TRef" entry of the fdf template dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FDFNamedPageReferenceElement](../../1472-fdfnamedpagereferenceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 249, page 464.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=472)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 252, page 562.](https://www.iso.org/standard/63534.html)

The TRef entry is an FDF named page reference dictionary identifying the template page by name and optionally by file. The viewer spawns a copy of this page into the target document.
