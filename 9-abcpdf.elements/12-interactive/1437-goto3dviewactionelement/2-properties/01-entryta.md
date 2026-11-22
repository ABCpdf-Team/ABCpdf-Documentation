# EntryTA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`AnnotationElement`](../../1391-annotationelement/index.md) | null | No | Represents the "TA" entry of the go-to-3d-view action object. |

## Notes

Represents the "TA" entry of the go-to-3d-view action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an [AnnotationElement](../../1391-annotationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 216, page 429.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=437)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 220, page 522.](https://www.iso.org/standard/63534.html)

The target annotation must be a 3D annotation. The action activates the specified view within that annotation's set of stored views.
