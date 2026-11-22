# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "C" entry of the media play parameters mh/be dictionary object. |

## Notes

Represents the "C" entry of the media play parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 622.](https://www.iso.org/standard/63534.html)

The C entry, when true, causes the media player to display its user interface controls such as play, pause, stop, and seek. When false, the player runs without visible controls.
