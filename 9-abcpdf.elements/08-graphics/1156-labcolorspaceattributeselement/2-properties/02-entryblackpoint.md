# EntryBlackPoint Property

## Notes

Represents the "BlackPoint" entry of the lab colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

Items in this array should have a minimum value of 0.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 65, page 148.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 64, page 186.

The black point gives the XYZ of the darkest colour in the space. When absent, (0, 0, 0) is used, meaning an L* of zero maps to zero XYZ output.
