# EntryBitsPerComponent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerComponent" entry of the lzw parameters object. |

## Notes

Represents the "BitsPerComponent" entry of the lzw parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 8 if no value has been provided.

This item may take one of the following valid values:.

- 1
- 2
- 4
- 8
- 16

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 28.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=36)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.](https://www.iso.org/standard/63534.html)

The BitsPerComponent entry gives the bit depth of each color component for use with a predictor. It has the same meaning as the FlateDecode BitsPerComponent entry.
