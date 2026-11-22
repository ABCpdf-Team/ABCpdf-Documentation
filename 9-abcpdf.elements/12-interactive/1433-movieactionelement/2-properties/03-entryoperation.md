# EntryOperation Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Operation" entry of the movie action object. |

## Notes

Represents the "Operation" entry of the movie action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "Play" if no value has been provided.

This item may take one of the following valid values:.

- Play
- Stop
- Pause
- Resume

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 209, page 426.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=434)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 213, page 517.](https://www.iso.org/standard/63534.html)

The operation name selects the playback command: Play starts from the beginning; Stop halts playback; Pause suspends it; Resume restarts from a paused position.
