# EntrySize Property

## Notes

Represents the "Size" entry of the file trailer dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.

The Size entry gives the total number of entries in the cross-reference table for this revision, including free and in-use entries from all previous revisions. It is one greater than the highest object number used in the file.

A new revision must set Size to a value large enough to include all object numbers used up to and including that revision. Readers use this value to size their internal object tables.
