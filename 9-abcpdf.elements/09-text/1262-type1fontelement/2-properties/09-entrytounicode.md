# EntryToUnicode Property

## Notes

Represents the "ToUnicode" entry of the type 1 font dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a StreamElement.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 255.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 311.

The stream body holds a CMap program that maps character codes to Unicode values. This allows text extraction tools and accessibility software to recover the Unicode text from the PDF without relying on font encoding alone.

The stream uses a restricted subset of the CMap syntax. It lists beginbfchar and beginbfrange sections that map source character codes to destination Unicode values, represented as UTF-16BE hex strings.

Without this entry, text extraction must rely on the font encoding and glyph name heuristics, which are not always reliable, especially for custom or remapped encodings.
