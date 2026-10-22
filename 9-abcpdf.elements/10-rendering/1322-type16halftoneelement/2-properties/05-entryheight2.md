# EntryHeight2 Property

## Notes

Represents the "Height2" entry of the type 16 halftone dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.

This value gives the row count of the second optional array. With Width2, it determines the size of the second data block in the stream.

When this entry and Width2 are both present, the type 16 halftone cell uses a non-rectangular shape analogous to the paired square regions in type 10. This permits screen angles that a single rectangular array cannot represent accurately.
