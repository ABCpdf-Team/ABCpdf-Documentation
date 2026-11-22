# EntrySubtype Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Subtype" entry of the type 1 font dictionary object. |

## Notes

Represents the "Subtype" entry of the type 1 font dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item must always be provided and must always take the value "Type1" or "MMType1".

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 111, page 254.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=262)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 109, page 310.](https://www.iso.org/standard/63534.html)
