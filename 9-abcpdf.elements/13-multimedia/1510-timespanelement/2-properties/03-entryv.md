# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "V" entry of the timespan dictionary object. |

## Notes

Represents the "V" entry of the timespan dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 289, page 502.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=510)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 300, page 628.](https://www.iso.org/standard/63534.html)

The V entry holds the time value. For the S subtype, V is a real number of seconds. Non-negative values represent durations or positions from the start; negative values count from the end of the media clip.
