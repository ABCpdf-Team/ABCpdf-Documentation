# EntryColumns Property

## Notes

Represents the "Columns" entry of the flate parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.

The Columns entry gives the number of samples per row. The predictor uses this to determine the byte width of each row and to correctly align the prediction between rows.
