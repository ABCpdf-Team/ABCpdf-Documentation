# EntrySubtype Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Subtype" entry of the devicen colour space attributes dictionary object. |

## Notes

Represents the "Subtype" entry of the devicen colour space attributes dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "DeviceN" if no value has been provided.

This item may take one of the following valid values:.

- DeviceN
- NChannel

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 71, page 161.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=169)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 70, page 203.](https://www.iso.org/standard/63534.html)
