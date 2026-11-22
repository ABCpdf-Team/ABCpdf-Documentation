# EntryLE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "LE" entry of the line annotation object. |

## Notes

Represents the "LE" entry of the line annotation object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains an array which contains strings, representing PDF name objects.

Items in this array may take one of the following valid values:.

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

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 398.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=406)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 482.](https://www.iso.org/standard/63534.html)

The two-element array specifies the line-end style at each endpoint in order. Available styles include None, Square, Circle, Diamond, OpenArrow, ClosedArrow, Butt, ROpenArrow, RClosedArrow, and Slash.
