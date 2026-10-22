# EntryRange Property

## Notes

Represents the "Range" entry of the function dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 38, page 93.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 38, page 123.

The Range array defines the valid range of output values as pairs of minimum and maximum values, one pair per output dimension. Output values outside the range are clipped after evaluation. Range is required for Type 0 and Type 4 functions.
