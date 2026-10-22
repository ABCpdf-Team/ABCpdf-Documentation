# EntryMask Property

## Notes

Represents the "Mask" entry of the image dictionary object.

It is defined as part of the PDF 1.3 specification.

This property may contain one of two different types:.

1) An array which contains doubles, representing PDF numeric objects.

2) An ImageXObjectElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

The Mask entry is either a color range array or a reference to another image stream. A color range mask suppresses painting for pixels whose component values fall within the specified ranges. An image stream mask uses the referenced one-bit image as a stencil.

Color range masking allows transparency based on color values without requiring a separate mask image, which can be more compact for images with a uniform background color.
