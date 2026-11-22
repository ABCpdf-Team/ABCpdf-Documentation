# EntryRename Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "Rename" entry of the fdf template dictionary object. |

## Notes

Represents the "Rename" entry of the fdf template dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 249, page 464.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=472)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 252, page 562.](https://www.iso.org/standard/63534.html)

When true all field names on the spawned page are given unique identifiers appended to their existing names, preventing name collisions when the same template is spawned multiple times.
