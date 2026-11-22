# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "F" entry of the media play parameters mh/be dictionary object. |

## Notes

Represents the "F" entry of the media play parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 5 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 497.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=505)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 622.](https://www.iso.org/standard/63534.html)

The F entry controls what happens at the end of media playback: 0 to leave the last frame displayed, 1 to rewind to the beginning without playing, 2 to play in reverse and stop, and 3 to play in reverse then freeze.
