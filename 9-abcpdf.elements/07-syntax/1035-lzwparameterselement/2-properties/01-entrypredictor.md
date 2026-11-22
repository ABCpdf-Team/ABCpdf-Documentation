# EntryPredictor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Predictor" entry of the lzw parameters object. |

## Notes

Represents the "Predictor" entry of the lzw parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 27.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=35)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.](https://www.iso.org/standard/63534.html)

The Predictor entry for LZW has the same meaning as for FlateDecode: it selects a pre-compression transformation. Values and semantics match the FlateDecode Predictor entry exactly.
