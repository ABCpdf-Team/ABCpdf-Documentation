# EntryCreationDate Property

## Notes

Represents the "CreationDate" entry of the document information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 712.

The CreationDate entry gives the date and time the document was originally created as a PDF date string. In PDF 2.0, preferably recorded in XMP metadata using xmp:CreateDate.
