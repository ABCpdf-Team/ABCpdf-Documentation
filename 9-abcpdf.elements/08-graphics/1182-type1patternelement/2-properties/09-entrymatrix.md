# EntryMatrix Property

## Notes

Represents the "Matrix" entry of the type 1 pattern dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 75, page 175.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 74, page 219.

The Matrix maps pattern space to the default user space of the context in which the pattern is used. This transformation can rotate, scale, translate, or shear the pattern without changing its content stream.

When absent, the identity matrix is used, meaning pattern space coincides with user space. Specifying a matrix allows the same pattern to be applied at different orientations and scales.
