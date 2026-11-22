# EntryLE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "LE" entry of the free text annotation object. |

## Notes

Represents the "LE" entry of the free text annotation object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "None" if no value has been provided.

This item may take one of the following valid values:.

- Square
- Circle
- Diamond
- OpenArrow
- ClosedArrow
- None
- Butt
- ROpenArrow
- RClosedArrow
- Slash

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 397.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=405)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 482.](https://www.iso.org/standard/63534.html)

The line-ending style is a name (or two-element array for both ends of a callout line). It selects from the same set of terminators used by line annotations: None, Square, Circle, Diamond, OpenArrow, ClosedArrow, Slash, and others.
