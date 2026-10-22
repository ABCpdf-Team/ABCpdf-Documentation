# EntryInfo Property

## Notes

Represents the "Info" entry of the file trailer dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a DocumentInformationElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 15, page 43.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 15, page 57.

The Info entry references the document information dictionary, which holds metadata about the document such as title, author, subject, keywords, creator, producer, and creation and modification dates.

In PDF 2.0, the document information dictionary is deprecated in favour of XMP metadata streams attached to the document catalog. Conforming PDF 2.0 writers should use XMP instead of or in addition to the Info dictionary.
