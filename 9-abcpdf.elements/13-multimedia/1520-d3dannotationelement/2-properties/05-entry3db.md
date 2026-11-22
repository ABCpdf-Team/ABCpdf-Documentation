# Entry3DB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "3DB" entry of the 3d annotation object. |

## Notes

Represents the "3DB" entry of the 3d annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 298, page 513.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=521)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 9.33, page 55.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=55)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 309, page 640.](https://www.iso.org/standard/63534.html)

The 3DB entry holds the default background colour for the 3D viewport as an array of colour component values. This colour appears behind the model when the background style uses a solid colour.
