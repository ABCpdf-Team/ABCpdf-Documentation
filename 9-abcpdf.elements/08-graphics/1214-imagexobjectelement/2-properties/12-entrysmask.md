# EntrySMask Property

## Notes

Represents the "SMask" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an ImageXObjectElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 208.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 257.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

The SMask entry references a grayscale Image XObject that provides per-pixel alpha values for this image during compositing. The soft mask must have the same Width and Height as the parent image.

Pixels in the soft mask image provide the alpha values used when the parent image is composited into the current transparency group. This allows smooth, per-pixel transparency without hard edges.
