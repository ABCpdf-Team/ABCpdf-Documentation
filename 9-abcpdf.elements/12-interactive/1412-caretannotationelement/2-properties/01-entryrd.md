# EntryRD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "RD" entry of the caret annotation object. |

## Notes

Represents the "RD" entry of the caret annotation object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 180, page 404.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=412)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 183, page 490.](https://www.iso.org/standard/63534.html)

The rect difference insets the drawn caret symbol from the annotation's Rect, providing visual space within the overall bounding rectangle.
