# EntryColorSpace Property

## Notes

Represents the "ColorSpace" entry of the shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a ColorSpaceElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 227.

The ColorSpace entry names the color space in which the shading's color values are expressed. It must be consistent with the number of color components produced by the shading's function or data.

Pattern and Indexed color spaces may not be used as the shading color space. All other PDF color spaces are permitted.
