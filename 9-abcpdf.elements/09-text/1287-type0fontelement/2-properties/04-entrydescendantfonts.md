# EntryDescendantFonts Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`CIDFontElement`](../../1277-cidfontelement/index.md)`>` | null | No | Represents the "DescendantFonts" entry of the type 0 font dictionary object. |

## Notes

Represents the "DescendantFonts" entry of the type 0 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [CIDFontElements](../../1277-cidfontelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 121, page 280.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=288)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 119, page 338.](https://www.iso.org/standard/63534.html)

This array must contain exactly one CIDFont dictionary. The CIDFont provides the glyph outlines and per-CID width data. Its CIDSystemInfo must be compatible with the CMap named in Encoding.

Although the array allows multiple entries in the data structure, PDF specifies that only one descendant is permitted for type 0 fonts.
