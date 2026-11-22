# EntryS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "S" entry of the transition dictionary object. |

## Notes

Represents the "S" entry of the transition dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "R" if no value has been provided.

This item may take one of the following valid values:.

- Split
- Blinds
- Box
- Wipe
- Dissolve
- Glitter
- R
- Fly
- Push
- Cover
- Uncover
- Fade

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 162, page 378.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=386)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 164, page 459.](https://www.iso.org/standard/63534.html)

The style name selects the visual effect. Defined values include Split, Blinds, Box, Wipe, Dissolve, Glitter, R (replace), Fly, Push, Cover, Uncover, and Fade. A viewer that does not support the named style may substitute a simpler effect.
