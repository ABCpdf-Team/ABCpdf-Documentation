# EntryA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "A" entry of the movie annotation object. |

## Notes

Represents the "A" entry of the movie annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

2\) A [MovieActivationElement](../../../13-multimedia/1516-movieactivationelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 186, page 407.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=415)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 189, page 494.](https://www.iso.org/standard/63534.html)

The activation flag controls whether the movie plays automatically when the page is opened (true) or only on explicit user action (false).
