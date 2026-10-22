# EntryPage Property

## Notes

Represents the "Page" entry of the reference dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1) An integer representing a PDF numeric object.

2) A string representing a PDF string object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 97, page 221.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 95, page 272.

The Page entry identifies which page of the external file the form represents. It may be a zero-based integer page index or a string page label. The identified page's content is used in place of the form's own stream when the reference is resolved.
