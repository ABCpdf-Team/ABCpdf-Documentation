# EntryBitsPerComponent Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerComponent" entry of the type 4 shading dictionary object. |

## Notes

Represents the "BitsPerComponent" entry of the type 4 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=197)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 236.](https://www.iso.org/standard/63534.html)

BitsPerComponent sets the number of bits per color component value in the stream. Valid values are 1, 2, 4, 8, 12, and 16. The Decode array maps these integers to the component range of the shading's color space.
