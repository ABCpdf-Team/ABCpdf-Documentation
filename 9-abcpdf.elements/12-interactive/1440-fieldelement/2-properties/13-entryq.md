# EntryQ Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Q" entry of the field dictionary object. |

## Notes

Represents the "Q" entry of the field dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It should have a minimum value of 0 and a maximum of 2.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 220, page 432.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=440)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 226, page 527.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 222, page 434.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=442)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 228, page 529.](https://www.iso.org/standard/63534.html)

The quadding integer specifies text alignment within the field: 0 left, 1 centre, 2 right. It applies to text and choice fields.
