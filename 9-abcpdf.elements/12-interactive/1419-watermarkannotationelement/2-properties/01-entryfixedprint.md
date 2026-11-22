# EntryFixedPrint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FixedPrintElement`](../../1419-fixedprintelement/index.md) | null | No | Represents the "FixedPrint" entry of the watermark annotation object. |

## Notes

Represents the "FixedPrint" entry of the watermark annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [FixedPrintElement](../../1419-fixedprintelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 190, page 411.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=419)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 193, page 498.](https://www.iso.org/standard/63534.html)

When present this entry overrides the standard annotation geometry, causing the watermark to be placed by the fixed print dictionary's matrix and page-fraction anchors rather than by the annotation's Rect.
