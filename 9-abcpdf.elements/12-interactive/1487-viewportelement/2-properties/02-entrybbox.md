# EntryBBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`RectangleElement`](../../../07-syntax/0017-rectangleelement/index.md) | null | No | Represents the "BBox" entry of the viewport dictionary object. |

## Notes

Represents the "BBox" entry of the viewport dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [RectangleElement](../../../07-syntax/0017-rectangleelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 260, page 479.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=487)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.109, page 48.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=48)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 265, page 592.](https://www.iso.org/standard/63534.html)

The bounding box defines the viewport region in default user space. It must be contained within the page's media box. Only content within this box is included in the coordinate mapping.
