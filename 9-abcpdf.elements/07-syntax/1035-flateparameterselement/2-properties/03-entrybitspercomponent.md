# EntryBitsPerComponent Property

## Notes

Represents the "BitsPerComponent" entry of the flate parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 8 if no value has been provided.

This item may take one of the following valid values:.

124816

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 28.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.

The BitsPerComponent entry gives the number of bits per color component in the data. Together with Colors and Columns, it determines the row width in bytes that the predictor processes as a unit.
