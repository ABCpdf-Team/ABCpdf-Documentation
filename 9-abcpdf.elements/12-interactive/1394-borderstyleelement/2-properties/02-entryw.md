# EntryW Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "W" entry of the border style dictionary object. |

## Notes

Represents the "W" entry of the border style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 166, page 386.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=394)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 168, page 469.](https://www.iso.org/standard/63534.html)

The width is in points. A width of zero produces no visible border. The border is drawn centred on the annotation rectangle so thick borders extend inward and outward by equal amounts.
