# EntryRC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "RC" entry of the media play parameters mh/be dictionary object. |

## Notes

Represents the "RC" entry of the media play parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 497.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=505)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 623.](https://www.iso.org/standard/63534.html)

The RC entry holds the repeat count as a real number. A value of 0 causes continuous looping. Positive integer values cause the media to play that many times. Fractional values are permitted.
