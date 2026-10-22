# EntryColorSpace Property

## Notes

Represents the "ColorSpace" entry of the image dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a ColorSpaceElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 89, page 206.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 4.39, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 87, page 255.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 146, page 349.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 144, page 418.

The ColorSpace entry specifies how the image sample values are interpreted as colors. The number of components per sample must match the color space. For example, a DeviceRGB image requires three components per sample.

This entry must be absent for image masks. It may be absent for JPX-encoded images that carry their own embedded color space, in which case the color space is taken from the JPX data.
