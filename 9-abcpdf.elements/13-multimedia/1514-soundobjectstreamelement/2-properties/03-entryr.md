# EntryR Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "R" entry of the sound object stream object. |

## Notes

Represents the "R" entry of the sound object stream object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 294, page 506.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=514)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 305, page 633.](https://www.iso.org/standard/63534.html)

The R entry gives the sampling rate of the audio data in samples per second. Common values are 8000, 11025, 22050, and 44100 Hz.
