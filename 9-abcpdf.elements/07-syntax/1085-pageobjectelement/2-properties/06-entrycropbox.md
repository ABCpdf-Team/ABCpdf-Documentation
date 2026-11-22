# EntryCropBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../0017-rectangleelement/index.md) | null | No | Represents the "CropBox" entry of the page object object. |

## Notes

Represents the "CropBox" entry of the page object object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 77.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=85)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 103.](https://www.iso.org/standard/63534.html)

The CropBox defines the region of the page's content to display or print. Content outside the CropBox is clipped but not discarded; it can be revealed by changing the CropBox. The default is the MediaBox.
