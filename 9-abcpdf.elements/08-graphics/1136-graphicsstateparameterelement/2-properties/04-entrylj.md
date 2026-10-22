# EntryLJ Property

## Notes

Represents the "LJ" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 128.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 162.

The line join style determines the shape at corners where two path segments meet. A value of 0 produces a miter join that extends the outer edges to a point; 1 produces a round join; 2 produces a bevel join that cuts across the corner.

Miter joins are clipped to the miter limit when the miter ratio would exceed it, reverting to a bevel at sharp angles.
