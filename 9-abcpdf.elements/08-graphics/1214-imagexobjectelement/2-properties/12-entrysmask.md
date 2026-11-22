# EntrySMask Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ImageXObjectElement`](../index.md) | null | No | Represents the "SMask" entry of the image dictionary object. |

## Notes

Represents the "SMask" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an [ImageXObjectElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 208.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=216)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 257.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The SMask entry references a grayscale Image XObject that provides per-pixel alpha values for this image during compositing. The soft mask must have the same Width and Height as the parent image.

Pixels in the soft mask image provide the alpha values used when the parent image is composited into the current transparency group. This allows smooth, per-pixel transparency without hard edges.
