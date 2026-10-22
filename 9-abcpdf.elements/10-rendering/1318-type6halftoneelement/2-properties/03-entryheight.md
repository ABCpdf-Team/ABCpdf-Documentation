# EntryHeight Property

## Notes

Represents the "Height" entry of the type 6 halftone dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 131, page 310.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 129, page 372.

This value sets the number of rows in the threshold table. Together with Width it fixes the total byte count the stream must supply.

The cell is always rectangular in type 6. If the workflow requires a non-rectangular cell to achieve a precise irrational screen angle, type 10 should be used instead.
