# EntryBackground Property

## Notes

Represents the "Background" entry of the shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 228.

The Background array gives a color in the shading's color space that is painted outside the natural geometry of the shading. For axial and radial shadings, the background fills areas beyond the Extend range. For mesh shadings, it fills areas outside the mesh boundary.

The background color does not affect the appearance inside the shading geometry. It is used only when the shading is painted within a shape that extends beyond the shading's own natural bounds.
