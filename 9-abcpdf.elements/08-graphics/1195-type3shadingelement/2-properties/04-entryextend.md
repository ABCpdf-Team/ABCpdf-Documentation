# EntryExtend Property

## Notes

Represents the "Extend" entry of the type 3 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains bool representing a PDF boolean objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 81, page 187.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 80, page 233.

The Extend array controls whether the colors at the two circles extend beyond those circles. When the first element is true, the color at the first circle fills the interior of that circle. When the second is true, the color at the second circle fills the exterior beyond it.
