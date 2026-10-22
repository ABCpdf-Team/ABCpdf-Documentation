# EntryDomain Property

## Notes

Represents the "Domain" entry of the type 1 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 79, page 185.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 78, page 230.

The Domain array defines the rectangular region of input coordinates (x, y) over which the shading function is evaluated. It contains four values: xmin, xmax, ymin, ymax. Points outside the domain are not colored by the shading.

When absent, the domain defaults to [0 1 0 1]. Adjusting the domain allows the function to be mapped over a specific coordinate range in shading space.
