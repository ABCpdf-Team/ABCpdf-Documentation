# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "P" entry of the web capture command dictionary object. |

## Notes

Represents the "P" entry of the web capture command dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 805.](https://www.iso.org/standard/63534.html)

The P entry holds an array of web capture command settings dictionaries recording global capture settings such as timeout values and content size limits.
