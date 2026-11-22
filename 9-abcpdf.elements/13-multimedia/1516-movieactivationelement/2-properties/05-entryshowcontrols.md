# EntryShowControls Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "ShowControls" entry of the movie activation dictionary object. |

## Notes

Represents the "ShowControls" entry of the movie activation dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 296, page 508.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=516)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 307, page 635.](https://www.iso.org/standard/63534.html)

The ShowControls entry, when true, causes the movie player to display its user interface controls during playback. When false, the movie plays without visible controls.
