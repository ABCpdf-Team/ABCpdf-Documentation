# EntryMissingWidth Property

## Notes

Represents the "MissingWidth" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 283.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.

When a character code falls outside the range defined by FirstChar and LastChar in the font dictionary, the viewer uses this value as the advance width. It prevents layout from breaking when codes outside the explicit width table are encountered.

For CIDFonts the equivalent is DW in the CIDFont dictionary.
