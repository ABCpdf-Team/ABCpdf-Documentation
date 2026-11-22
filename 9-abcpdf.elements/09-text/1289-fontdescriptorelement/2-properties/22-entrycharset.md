# EntryCharSet Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CharSet" entry of the font descriptor object. |

## Notes

Represents the "CharSet" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.1 specification. It was deprecated in PDF 2.0.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 283.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=291)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

CharSet is a byte string formatted as a PostScript array of glyph names, such as (/A /B /C). It lists all the glyphs present in a Type 1 font subset.

Viewers can use CharSet to determine which character codes a subset font can render without decompressing and parsing the font program. It is not used for TrueType or CFF fonts.
