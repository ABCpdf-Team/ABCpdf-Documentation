# EntryCreationDate Property

## Notes

Represents the "CreationDate" entry of the embedded file parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.

The CreationDate entry holds the date and time the original file was created, encoded as a PDF date string. This date refers to the file as it existed before embedding, not to the time it was added to the PDF.
