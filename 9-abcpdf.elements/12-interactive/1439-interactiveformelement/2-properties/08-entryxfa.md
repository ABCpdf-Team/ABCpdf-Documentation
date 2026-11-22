# EntryXFA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "XFA" entry of the interactive form dictionary object. |

## Notes

Represents the "XFA" entry of the interactive form dictionary object.

It is an optional entry defined as part of the PDF 1.5 specification. It was deprecated in PDF 2.0.

This property may contain one of two different types:.

1\) An array which contains [Elements](../../../01-base/1086-element/index.md).

2\) A [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 218, page 431.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=439)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 224, page 526.](https://www.iso.org/standard/63534.html)

The XFA entry holds either a stream or an array of alternating name-stream pairs forming an XFA document. Viewers that support XFA use this to render and process the form using the XFA engine rather than the AcroForm model.
