# EntryHeight Property

## Notes

Represents the "Height" entry of the type 16 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 133, page 314.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 131, page 376.

This value sets the row count of the first threshold array. With Width, it determines how many two-byte samples must appear before the optional second array begins.

With only one array the cell is rectangular, defined entirely by Width and Height. With both arrays present, the cell takes on the parallelogram geometry of type 10, allowing more accurate screen angles.
