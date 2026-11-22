# EntryMask Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "Mask" entry of the image dictionary object. |

## Notes

Represents the "Mask" entry of the image dictionary object.

It is defined as part of the PDF 1.3 specification.

This property may contain one of two different types:.

1\) An array which contains doubles, representing PDF numeric objects.

2\) An [ImageXObjectElement](../index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=215)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=27)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=357)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.](https://www.iso.org/standard/63534.html)

The Mask entry is either a color range array or a reference to another image stream. A color range mask suppresses painting for pixels whose component values fall within the specified ranges. An image stream mask uses the referenced one-bit image as a stencil.

Color range masking allows transparency based on color values without requiring a separate mask image, which can be more compact for images with a uniform background color.
