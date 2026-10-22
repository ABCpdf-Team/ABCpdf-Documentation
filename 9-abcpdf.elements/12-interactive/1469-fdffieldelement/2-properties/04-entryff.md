# EntryFf Property

## Notes

Represents the "Ff" entry of the fdf field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 461.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 559.

When present Ff completely replaces the target field's Ff flags integer. To make targeted bit changes without knowing the complete flag state use SetFf and ClrFf instead.
