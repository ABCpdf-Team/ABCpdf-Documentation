# EntryPrev Property

## Notes

Represents the "Prev" entry of the file trailer dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.

The Prev entry gives the byte offset from the beginning of the file to the previous cross-reference section or cross-reference stream. Following the Prev chain from the most recent trailer back to the original allows a reader to reconstruct all revisions of an incrementally updated document.
