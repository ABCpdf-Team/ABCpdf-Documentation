# EntryParent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`AnnotationElement`](../../1391-annotationelement/index.md) | null | No | Represents the "Parent" entry of the pop-up annotation object. |

## Notes

Represents the "Parent" entry of the pop-up annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [AnnotationElement](../../1391-annotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 183, page 406.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=414)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 186, page 492.](https://www.iso.org/standard/63534.html)

The parent entry must reference the markup annotation that owns this pop-up. The pop-up carries no content; all text and author information comes from the parent markup annotation's Contents and T entries.
