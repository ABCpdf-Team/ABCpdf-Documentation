# EntryAPRef Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`AppearanceElement`](../../1397-appearanceelement/index.md) | null | No | Represents the "APRef" entry of the fdf field dictionary object. |

## Notes

Represents the "APRef" entry of the fdf field dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an [AppearanceElement](../../1397-appearanceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 462.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=470)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 560.](https://www.iso.org/standard/63534.html)

The APRef entry provides indirect references to appearance streams stored in an external PDF, allowing large appearance resources to be shared without being embedded in the FDF.
