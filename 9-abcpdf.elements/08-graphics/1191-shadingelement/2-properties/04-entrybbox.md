# EntryBBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "BBox" entry of the shading dictionary object. |

## Notes

Represents the "BBox" entry of the shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=191)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 228.](https://www.iso.org/standard/63534.html)

The BBox rectangle clips the shading to a region in shading space. Nothing is painted outside this box. Using a tight BBox can improve rendering performance by limiting the area the renderer must process.
