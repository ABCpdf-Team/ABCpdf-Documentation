# EntryImageMask Property

## Notes

Represents the "ImageMask" entry of the image dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 207.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 256.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

When ImageMask is true, the image data is treated as a stencil. Samples with value 1 (or 0, depending on the Decode array) mark areas where the current color is applied; the opposite value leaves those areas unchanged.

An image mask must have BitsPerComponent equal to 1 and must not have a ColorSpace entry. The mask shape is independent of the image's painted dimensions.
