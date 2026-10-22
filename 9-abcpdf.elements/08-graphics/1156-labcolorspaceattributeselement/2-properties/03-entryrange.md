# EntryRange Property

## Notes

Represents the "Range" entry of the lab colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 65, page 148.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 64, page 186.

The range array gives the valid domain for the a* and b* opponent-colour components as two pairs of minimum and maximum values. Values outside this range are clipped before conversion.

The default range of -128 to 127 for both a* and b* covers all colours expressible in standard CIE L*a*b*. Tighter ranges may be used to constrain the gamut of the color space.
