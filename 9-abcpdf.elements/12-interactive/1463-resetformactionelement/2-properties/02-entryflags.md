# EntryFlags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Flags" entry of the reset-form action object. |

## Notes

Represents the "Flags" entry of the reset-form action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 238, page 455.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=463)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 241, page 552.](https://www.iso.org/standard/63534.html)

Only bit 1 is defined: when 0 (Include) only listed fields are reset; when 1 (Exclude) all fields except the listed ones are reset.
