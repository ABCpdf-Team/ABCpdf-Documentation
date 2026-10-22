# EntryN Property

## Notes

Represents the "N" entry of the type 2 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 40, page 96.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 40, page 126.

The N entry is the interpolation exponent. An N of 1 produces a linear ramp from C0 to C1. Values greater than 1 produce a curve that rises slowly near 0 and steeply near 1. Fractional N values are permitted and produce corresponding power curves.
