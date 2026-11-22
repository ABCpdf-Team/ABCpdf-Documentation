# EntryCropRect Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "CropRect" entry of the version 1. |

## Notes

Represents the "CropRect" entry of the version 1.3 opi dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 640.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=648)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 824.](https://www.iso.org/standard/63534.html)

The CropRect entry holds a four-element array defining the region of the high-resolution image used in the layout, in image pixel coordinates.
