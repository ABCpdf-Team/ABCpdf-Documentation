# EntryRange Property

## Notes

Represents the "Range" entry of the icc profile stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 66, page 150.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 65, page 188.

The Range array gives the valid minimum and maximum values for each of the N color components. It contains 2N numbers arranged as min/max pairs, one pair per component.

When absent, all components are assumed to have a range of 0 to 1. Profiles that use different input encodings require explicit Range values to communicate the actual domain to the conforming reader.
