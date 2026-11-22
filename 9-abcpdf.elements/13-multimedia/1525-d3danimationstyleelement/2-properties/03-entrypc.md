# EntryPC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "PC" entry of the 3d animation style dictionary object. |

## Notes

Represents the "PC" entry of the 3d animation style dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 301, page 517.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=525)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 312, page 646.](https://www.iso.org/standard/63534.html)

The PC entry gives the number of times the animation plays as a non-negative integer. A value of 0 means the animation loops continuously. A value of 1 plays the animation once.
