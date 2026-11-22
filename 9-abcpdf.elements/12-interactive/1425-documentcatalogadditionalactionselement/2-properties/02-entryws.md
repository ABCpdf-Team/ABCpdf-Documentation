# EntryWS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`JavaScriptActionElement`](../../1438-javascriptactionelement/index.md) | null | No | Represents the "WS" entry of the document catalog additional-actions dictionary object. |

## Notes

Represents the "WS" entry of the document catalog additional-actions dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a [JavaScriptActionElement](../../1438-javascriptactionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 197, page 417.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=425)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 200, page 505.](https://www.iso.org/standard/63534.html)

The will-save action fires before the viewer saves the document. It can update timestamps, validate form state, or perform pre-save processing.
