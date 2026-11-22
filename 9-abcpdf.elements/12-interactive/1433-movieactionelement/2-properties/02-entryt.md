# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "T" entry of the movie action object. |

## Notes

Represents the "T" entry of the movie action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 209, page 425.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=433)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 213, page 517.](https://www.iso.org/standard/63534.html)

The title string locates the movie annotation by its T entry, decoupling the action from the specific annotation object at the cost of requiring unique titles.
