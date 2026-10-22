# EntryToUnicode Property

## Notes

Represents the "ToUnicode" entry of the type 3 font dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.

The CMap stream maps character codes to Unicode values, enabling text extraction from documents that use type 3 fonts. Without it, the text content of type 3 glyphs is generally not recoverable.

The stream syntax follows the same pattern as for type 1 and TrueType fonts.
