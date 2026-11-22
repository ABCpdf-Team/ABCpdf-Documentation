# EntryCount Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Count" entry of the outline dictionary object. |

## Notes

Represents the "Count" entry of the outline dictionary object.

It is defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 152, page 368.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=376)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 150, page 442.](https://www.iso.org/standard/63534.html)

The count is the total number of open outline items at all levels of the tree. Viewers may use this to allocate display space for the outline.
