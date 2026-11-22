# EntryFontFile Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`EmbeddedFontStreamElement`](../../1298-embeddedfontstreamelement/index.md) | null | No | Represents the "FontFile" entry of the font descriptor object. |

## Notes

Represents the "FontFile" entry of the font descriptor object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an [EmbeddedFontStreamElement](../../1298-embeddedfontstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 122, page 283.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=291)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 120, page 342.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 124, page 285.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=293)

FontFile holds a Type 1 font program. The stream body contains the three sections of a Type 1 font binary: the clear-text section, the encrypted section, and the fixed-content section. The lengths of these sections are given by Length1, Length2, and Length3 in the stream dictionary.
