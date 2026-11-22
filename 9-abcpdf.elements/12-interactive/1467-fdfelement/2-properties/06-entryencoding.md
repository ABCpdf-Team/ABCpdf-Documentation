# EntryEncoding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Encoding" entry of the fdf dictionary object. |

## Notes

Represents the "Encoding" entry of the fdf dictionary object.

It is an optional entry defined as part of the PDF 1.3 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "PDFDocEncoding" if no value has been provided.

This item may take one of the following valid values:.

- PDFDocEncoding
- Shift
- BigFive
- GBK
- UHC
- utf

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 243, page 459.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=467)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 246, page 556.](https://www.iso.org/standard/63534.html)

The encoding entry names the character encoding for text field values in the FDF. When absent the encoding is determined by the PDF text-string encoding rules.
