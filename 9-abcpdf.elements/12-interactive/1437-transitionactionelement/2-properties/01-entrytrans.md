# EntryTrans Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`TransitionElement`](../../1386-transitionelement/index.md) | null | No | Represents the "Trans" entry of the transition action object. |

## Notes

Represents the "Trans" entry of the transition action object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [TransitionElement](../../1386-transitionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 215, page 429.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=437)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 219, page 521.](https://www.iso.org/standard/63534.html)

The transition dictionary describes the visual effect: style, duration, dimension, direction, and style-specific parameters. It follows the same structure as the page object's Trans entry.
