# EntryWhitePoint Property

## Notes

Represents the "WhitePoint" entry of the calrgb colour space dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a positive value.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 63, page 184.

The white point specifies the CIE XYZ of the reference illuminant for this color space. Its Y component must equal 1.0. The white point is used to normalise XYZ values derived from the RGB components during color conversion.
