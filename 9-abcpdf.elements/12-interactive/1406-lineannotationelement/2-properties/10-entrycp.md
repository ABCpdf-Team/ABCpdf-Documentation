# EntryCP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CP" entry of the line annotation object. |

## Notes

Represents the "CP" entry of the line annotation object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Inline" if no value has been provided.

This item may take one of the following valid values:.

- Inline
- Top

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 175, page 399.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=407)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 178, page 483.](https://www.iso.org/standard/63534.html)

The caption position controls where the Contents label is drawn: Inline places it at the midpoint of the line; Top places it above the midpoint.
