# EntryM Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "M" entry of the media screen parameters mh/be dictionary object. |

## Notes

Represents the "M" entry of the media screen parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 0 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 283, page 499.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=507)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 294, page 625.](https://www.iso.org/standard/63534.html)

The M entry specifies which monitor to use for playback: 0 for the monitor showing the largest part of the annotation, 1 for the monitor showing the smallest part, 2 for the primary monitor, and 3 for the monitor showing the largest part of the page.
