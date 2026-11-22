# EntryRD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "RD" entry of the free text annotation object. |

## Notes

Represents the "RD" entry of the free text annotation object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 397.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=405)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 481.](https://www.iso.org/standard/63534.html)

The rect difference array contains four numbers specifying insets from the annotation Rect: left, top, right, and bottom. Text is rendered within the inset rectangle, leaving the outer margin for border and callout drawing.
