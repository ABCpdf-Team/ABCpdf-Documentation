# EntryFontStretch Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "FontStretch" entry of the font descriptor object. |

## Notes

Represents the "FontStretch" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- (ordered
- UltraCondensed
- ExtraCondensed
- Condensed
- SemiCondensed
- Normal
- SemiExpanded
- Expanded
- ExtraExpanded
- UltraExpanded

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=290)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

The stretch classification gives a relative indication of the width of the font. It is a name value from a defined set: UltraCondensed, ExtraCondensed, Condensed, SemiCondensed, Normal, SemiExpanded, Expanded, ExtraExpanded, or UltraExpanded.

This entry is informational and is used for font matching and substitution rather than glyph rendering.
