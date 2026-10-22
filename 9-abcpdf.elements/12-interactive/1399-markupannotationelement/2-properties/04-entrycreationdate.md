# EntryCreationDate Property

## Notes

Represents the "CreationDate" entry of the markup annotation object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 170, page 392.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.21, page 38.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 332, page 695.

The creation date records when the annotation was first created, distinct from the modification date (M) in the base annotation, allowing threading and sorting tools to distinguish original creation time from subsequent edits.
