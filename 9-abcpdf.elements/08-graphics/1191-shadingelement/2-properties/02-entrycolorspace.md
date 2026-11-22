# EntryColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | Represents the "ColorSpace" entry of the shading dictionary object. |

## Notes

Represents the "ColorSpace" entry of the shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=191)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 227.](https://www.iso.org/standard/63534.html)

The ColorSpace entry names the color space in which the shading's color values are expressed. It must be consistent with the number of color components produced by the shading's function or data.

Pattern and Indexed color spaces may not be used as the shading color space. All other PDF color spaces are permitted.
