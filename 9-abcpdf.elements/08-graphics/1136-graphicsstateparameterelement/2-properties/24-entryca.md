# EntryCA Property

## Notes

Represents the "CA" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 164.

The CA entry sets the constant alpha for stroking operations within the current transparency model. It controls how opaque the source color is when composited with the backdrop during stroke painting.

A value of 1.0 means fully opaque; a value of 0.0 means fully transparent. Intermediate values produce semi-transparent strokes whose visual result depends on the current blend mode and backdrop.
