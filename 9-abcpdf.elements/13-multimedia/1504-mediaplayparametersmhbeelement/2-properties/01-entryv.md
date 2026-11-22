# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "V" entry of the media play parameters mh/be dictionary object. |

## Notes

Represents the "V" entry of the media play parameters mh/be dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 100 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 280, page 496.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=504)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 291, page 622.](https://www.iso.org/standard/63534.html)

The V entry holds the playback volume as a real number multiplier relative to the system volume. A value of 1.0 means normal volume; 0.0 means silent; values greater than 1.0 increase the volume above normal.
