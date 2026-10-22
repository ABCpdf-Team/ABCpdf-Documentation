# EntryFirst Property

## Notes

Represents the "First" entry of the object stream dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 16, page 46.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 16, page 61.

The First entry gives the byte offset within the decoded stream body where the first stored object begins, marking the end of the header section. Objects are located by adding their individual offsets (from the header) to First.
