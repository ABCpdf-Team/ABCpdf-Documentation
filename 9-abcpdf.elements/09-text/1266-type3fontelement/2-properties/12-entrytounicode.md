# EntryToUnicode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamElement`](../../../07-syntax/1028-streamelement/index.md) | null | No | Represents the "ToUnicode" entry of the type 3 font dictionary object. |

## Notes

Represents the "ToUnicode" entry of the type 3 font dictionary object.

It is an optional entry defined as part of the PDF 1.2 specification.

It contains a [StreamElement](../../../07-syntax/1028-streamelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 112, page 259.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=267)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 110, page 315.](https://www.iso.org/standard/63534.html)

The CMap stream maps character codes to Unicode values, enabling text extraction from documents that use type 3 fonts. Without it, the text content of type 3 glyphs is generally not recoverable.

The stream syntax follows the same pattern as for type 1 and TrueType fonts.
