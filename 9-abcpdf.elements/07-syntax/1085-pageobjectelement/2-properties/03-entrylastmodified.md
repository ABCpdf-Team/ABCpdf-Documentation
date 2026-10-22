# EntryLastModified Property

## Notes

Represents the "LastModified" entry of the page object object.

It is defined as part of the PDF 1.3 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the StringAtom.DateToString and StringAtom.StringToDate functions.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 77.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 103.

The LastModified entry gives the date and time of the most recent modification to the page's content or resources, encoded as a PDF date string. Applications may use this to detect whether a cached rendering of the page is still current.
