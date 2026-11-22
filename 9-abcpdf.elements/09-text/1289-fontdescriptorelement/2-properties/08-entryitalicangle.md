# EntryItalicAngle Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "ItalicAngle" entry of the font descriptor object. |

## Notes

Represents the "ItalicAngle" entry of the font descriptor object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=290)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

This value is the angle in degrees between the vertical axis of the font and the dominant stroke direction of italic glyphs, measured counter-clockwise. For upright fonts the value is zero.

Viewers use this angle to slant the glyph bounding boxes for italic text and to position cursor insertion points correctly in text editors.
