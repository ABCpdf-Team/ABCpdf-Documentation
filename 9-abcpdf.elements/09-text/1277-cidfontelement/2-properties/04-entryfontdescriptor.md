# EntryFontDescriptor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FontDescriptorElement`](../../1289-fontdescriptorelement/index.md) | null | No | Represents the "FontDescriptor" entry of the cidfont dictionary object. |

## Notes

Represents the "FontDescriptor" entry of the cidfont dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [FontDescriptorElement](../../1289-fontdescriptorelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 269.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=277)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.](https://www.iso.org/standard/63534.html)

The FontDescriptor here follows the same structure as for simple fonts but the font program is embedded as FontFile2 for CIDFontType2 or in a FontFile3 stream with Subtype CIDFontType0C for CIDFontType0.

Embedding the font program is required for PDF/A conformance and strongly recommended for all other uses to ensure consistent rendering.
