# EntryN Property

## Notes

Represents the "N" entry of the icc profile stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 149.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 65, page 188.

The N value declares how many color components the ICC profile's input color space uses. Valid values are 1 for grayscale profiles, 3 for RGB and Lab profiles, and 4 for CMYK profiles.

N must match the actual number of input channels in the embedded profile. A mismatch between N and the profile's internal declaration is an error.
