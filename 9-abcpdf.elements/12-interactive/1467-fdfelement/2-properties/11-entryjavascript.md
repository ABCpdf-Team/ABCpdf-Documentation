# EntryJavaScript Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FDFJavaScriptElement`](../../1469-fdfjavascriptelement/index.md) | null | No | Represents the "JavaScript" entry of the fdf dictionary object. |

## Notes

Represents the "JavaScript" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [FDFJavaScriptElement](../../1469-fdfjavascriptelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 460.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=468)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 557.](https://www.iso.org/standard/63534.html)

The JavaScript entry references an FDF JavaScript dictionary whose scripts execute as part of the import: some before the data is applied, some after, and some after all permission-dependent features are available.
