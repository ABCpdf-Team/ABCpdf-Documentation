# EntryFontWeight Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "FontWeight" entry of the font descriptor object. |

## Notes

Represents the "FontWeight" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 282.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=290)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 341.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

The weight is a numeric value on a scale from 100 to 900 in steps of 100, following the CSS and OpenType weight convention. The value 400 corresponds to regular weight and 700 to bold.

As with FontStretch, this is informational and helps viewers choose substitutes when the original font is unavailable.
