# EntryJS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "JS" entry of the javascript action object. |

## Notes

Represents the "JS" entry of the javascript action object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [TextStreamElement](../../../07-syntax/0018-textstreamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 217, page 430.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=438)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 221, page 523.](https://www.iso.org/standard/63534.html)

When JS is a stream the stream data is the script text. Storing the script in a stream avoids PDF string length limitations and allows the script to be shared by reference from multiple actions.
