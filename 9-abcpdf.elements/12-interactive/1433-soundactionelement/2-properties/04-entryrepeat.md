# EntryRepeat Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "Repeat" entry of the sound action object. |

## Notes

Represents the "Repeat" entry of the sound action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 208, page 425.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=433)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 212, page 516.](https://www.iso.org/standard/63534.html)

When true the sound loops continuously until the user or another action stops it.
