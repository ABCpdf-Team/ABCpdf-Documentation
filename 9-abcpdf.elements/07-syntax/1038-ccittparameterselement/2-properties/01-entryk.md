# EntryK Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "K" entry of the ccittfax parameters object. |

## Notes

Represents the "K" entry of the ccittfax parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 11, page 30.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=38)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 11, page 43.](https://www.iso.org/standard/63534.html)

The K entry selects the CCITT encoding scheme. A value of 0 uses pure Group 3 one-dimensional encoding. A negative value uses Group 4 two-dimensional encoding. A positive value uses mixed Group 3 encoding where the value limits the number of consecutive two-dimensional rows.
