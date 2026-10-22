# EntryRotate Property

## Notes

Represents the "Rotate" entry of the page tree node object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 29, page 76.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 30, page 102.

The Rotate entry in a page tree node defines the inheritable default rotation for descendant pages. Pages that do not specify their own Rotate entry inherit this value. The rotation is clockwise in degrees and must be a multiple of 90.
