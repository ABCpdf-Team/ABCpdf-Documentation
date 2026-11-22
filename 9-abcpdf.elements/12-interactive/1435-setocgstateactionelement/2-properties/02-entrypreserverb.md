# EntryPreserveRB Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "PreserveRB" entry of the set-ocg-state action object. |

## Notes

Represents the "PreserveRB" entry of the set-ocg-state action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of true if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 213, page 427.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=435)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 217, page 519.](https://www.iso.org/standard/63534.html)

When true and a targeted group belongs to a radio-button group, the action maintains the constraint that exactly one member of the group is visible. When false the constraint is ignored.
