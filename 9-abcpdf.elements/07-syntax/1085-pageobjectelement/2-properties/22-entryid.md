# EntryID Property

## Notes

Represents the "ID" entry of the page object object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 30, page 79.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.27, page 23.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 31, page 105.

The ID entry on a page holds a byte-string identifier used by the web capture mechanism to associate the page with a captured web resource. It matches an entry in the document's web capture information.
