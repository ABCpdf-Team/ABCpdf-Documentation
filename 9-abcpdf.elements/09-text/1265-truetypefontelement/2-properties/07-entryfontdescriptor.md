# EntryFontDescriptor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FontDescriptorElement`](../../1289-fontdescriptorelement/index.md) | null | No | Represents the "FontDescriptor" entry of the truetype font dictionary object. |

## Notes

Represents the "FontDescriptor" entry of the truetype font dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains a [FontDescriptorElement](../../1289-fontdescriptorelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 257.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=265)

The FontDescriptor provides the font metrics and holds the embedded TrueType font program in a FontFile2 stream.

TrueType fonts used for non-symbolic encodings must have a FontDescriptor. For symbolic fonts it is also recommended so that the font can be embedded and metrics are reliably available.
