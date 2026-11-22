# EntryJS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "JS" entry of the rendition action object. |

## Notes

Represents the "JS" entry of the rendition action object.

It is defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 214, page 428.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=436)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 218, page 521.](https://www.iso.org/standard/63534.html)

The JavaScript string is executed when OP is 4 or may be executed alongside a media operation for codes 0 through 3, enabling fine-grained control over media players that expose a JavaScript API.
