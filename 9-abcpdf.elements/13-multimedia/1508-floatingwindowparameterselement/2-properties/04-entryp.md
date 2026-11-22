# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "P" entry of the floating window parameters dictionary object. |

## Notes

Represents the "P" entry of the floating window parameters dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 4 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 284, page 500.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=508)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 295, page 626.](https://www.iso.org/standard/63534.html)

The P entry holds an integer specifying the position of the floating window within its reference area. Values 0 through 8 map to a 3x3 grid of positions: upper-left, upper-centre, upper-right, centre-left, centre, centre-right, lower-left, lower-centre, lower-right.
