# EntryLocation Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Location" entry of the signature dictionary object. |

## Notes

Represents the "Location" entry of the signature dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 252, page 468.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=476)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 255, page 567.](https://www.iso.org/standard/63534.html)

The location string records the physical or logical location where the signature was applied, such as a city, country, or workstation identifier. It is informational and not verified by signature validation.
