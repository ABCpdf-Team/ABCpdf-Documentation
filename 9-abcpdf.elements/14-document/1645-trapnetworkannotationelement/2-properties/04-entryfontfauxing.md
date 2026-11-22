# EntryFontFauxing Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FontElement`](../../../09-text/1262-fontelement/index.md)`>` | null | No | Represents the "FontFauxing" entry of the trap network annotation object. |

## Notes

Represents the "FontFauxing" entry of the trap network annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FontElements](../../../09-text/1262-fontelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 366, page 638.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=646)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 403, page 821.](https://www.iso.org/standard/63534.html)

The FontFauxing entry lists fonts to which synthetic bold or italic was applied during trapping. These affect stroke widths and therefore trap geometry.
