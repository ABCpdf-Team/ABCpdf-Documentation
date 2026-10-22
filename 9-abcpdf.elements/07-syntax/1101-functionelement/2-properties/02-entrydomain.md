# EntryDomain Property

## Notes

Represents the "Domain" entry of the function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 38, page 93.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 38, page 123.

The Domain array defines the valid range of input values as pairs of minimum and maximum values, one pair per input dimension. Input values outside the domain are clipped to the nearest boundary before the function is evaluated.
