# EntryL Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "L" entry of the web capture command dictionary object. |

## Notes

Represents the "L" entry of the web capture command dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 805.](https://www.iso.org/standard/63534.html)

The L entry gives the link depth to which the spider followed hyperlinks from the starting URL. A value of 0 means only the starting URL was retrieved.
