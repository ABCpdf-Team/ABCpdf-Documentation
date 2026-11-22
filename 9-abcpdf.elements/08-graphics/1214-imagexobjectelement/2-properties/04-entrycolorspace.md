# EntryColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | Represents the "ColorSpace" entry of the image dictionary object. |

## Notes

Represents the "ColorSpace" entry of the image dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 206.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=214)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 255.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The ColorSpace entry specifies how the image sample values are interpreted as colors. The number of components per sample must match the color space. For example, a DeviceRGB image requires three components per sample.

This entry must be absent for image masks. It may be absent for JPX-encoded images that carry their own embedded color space, in which case the color space is taken from the JPX data.
