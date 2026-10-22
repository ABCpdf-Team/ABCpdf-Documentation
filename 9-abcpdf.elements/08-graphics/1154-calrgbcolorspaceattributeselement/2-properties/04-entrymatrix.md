# EntryMatrix Property

## Notes

Represents the "Matrix" entry of the calrgb colour space dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 64, page 146.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 63, page 184.

The matrix is a nine-element array that defines the 3�3 linear transformation from the linearised RGB components to XYZ values relative to the white point. The columns of the matrix are the XYZ coordinates of the red, green, and blue primaries respectively.

When absent, the identity matrix is assumed, which means the linearised RGB values are treated directly as XYZ values. For a physically meaningful color space, a non-identity matrix matched to the primaries of the source device should be provided.
