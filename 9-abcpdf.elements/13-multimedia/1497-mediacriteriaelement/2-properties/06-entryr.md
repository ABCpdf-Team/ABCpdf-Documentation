# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "R" entry of the media criteria dictionary object. |

## Notes

Represents the "R" entry of the media criteria dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 268, page 490.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=498)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 279, page 614.](https://www.iso.org/standard/63534.html)

The R entry holds a minimum required bit rate in bits per second. A rendition is accepted only if the estimated playback connection speed is at least this value.
