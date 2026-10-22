# EntryT Property

## Notes

Represents the "T" entry of the linearization parameter dictionary object.

It is a required entry defined as part of the PDF 1.2 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: f.1, page 680.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: f.1, page 878.

The T entry gives the byte offset of the main cross-reference table or stream. After the first page is displayed, a reader fetches this to load cross-reference data for the rest of the document.
