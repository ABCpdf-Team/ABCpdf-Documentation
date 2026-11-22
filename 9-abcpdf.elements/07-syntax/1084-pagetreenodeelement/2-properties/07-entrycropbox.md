# EntryCropBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../0017-rectangleelement/index.md) | null | No | Represents the "CropBox" entry of the page tree node object. |

## Notes

Represents the "CropBox" entry of the page tree node object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=84)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.](https://www.iso.org/standard/63534.html)

The CropBox entry in a page tree node defines the inheritable default crop box for descendant pages. Pages that do not specify their own CropBox inherit this value, which defaults to the MediaBox when absent at all levels.
