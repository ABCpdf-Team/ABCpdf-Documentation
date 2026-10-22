# EntryWhitePoint Property

## Notes

Represents the "WhitePoint" entry of the calgray colour space dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a positive value.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 63, page 145.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 62, page 183.

The white point fixes the reference illuminant for the CalGray color space as CIE XYZ values. The Y component must equal 1.0. All other XYZ values in the space are relative to this white.
