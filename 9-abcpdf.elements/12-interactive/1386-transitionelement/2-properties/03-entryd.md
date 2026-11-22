# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "D" entry of the transition dictionary object. |

## Notes

Represents the "D" entry of the transition dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 162, page 378.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=386)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 164, page 459.](https://www.iso.org/standard/63534.html)

The duration is a real number of seconds. It is advisory: if the hardware cannot complete the animation in the given time the viewer may truncate or simplify the effect.
