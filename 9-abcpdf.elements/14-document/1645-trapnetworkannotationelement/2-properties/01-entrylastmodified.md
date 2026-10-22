# EntryLastModified Property

## Notes

Represents the "LastModified" entry of the trap network annotation object.

It is defined as part of the PDF 1.4 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 637.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 820.

The LastModified entry records when the trap network was last generated as a PDF date string. Comparing this with the page modification date indicates whether the traps need regeneration.
