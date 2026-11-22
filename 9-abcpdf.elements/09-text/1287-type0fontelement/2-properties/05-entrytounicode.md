# EntryToUnicode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | No | Represents the "ToUnicode" entry of the type 0 font dictionary object. |

## Notes

Represents the "ToUnicode" entry of the type 0 font dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 121, page 280.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=288)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 119, page 338.](https://www.iso.org/standard/63534.html)

For type 0 fonts a ToUnicode stream is especially important because the character codes in the PDF content stream are not directly Unicode values. The CMap in this stream maps those codes to Unicode, enabling correct text extraction.

Without this entry, extracting the actual text from a document using a type 0 font requires knowledge of the encoding CMap, which may not always be available or may not have a well-defined Unicode mapping.
