# EntryDOS Property

## Notes

Represents the "DOS" entry of the full file specification dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was marked obsolescent in PDF 1.7 and deprecated in PDF 2.0.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 44, page 102.

Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.41, page 26.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 43, page 133.

The DOS entry holds a file path string in DOS/Windows format for compatibility with old PDF documents. It is deprecated in PDF 2.0 in favour of the F and UF entries.
