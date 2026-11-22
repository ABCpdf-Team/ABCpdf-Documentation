# EntryOverprint Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "Overprint" entry of the version 2. |

## Notes

Represents the "Overprint" entry of the version 2.0 opi dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 642.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=650)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 826.](https://www.iso.org/standard/63534.html)

The Overprint entry in OPI 2.0, when true, indicates the high-resolution replacement image should overprint underlying content at output time.
