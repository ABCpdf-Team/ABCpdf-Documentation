# EntryBitsPerSample Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "BitsPerSample" entry of the type 0 function dictionary object. |

## Notes

Represents the "BitsPerSample" entry of the type 0 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 39, page 94.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=102)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 39, page 124.](https://www.iso.org/standard/63534.html)

The BitsPerSample entry gives the number of bits used to encode each sample value. Samples are packed into the stream without byte alignment between values. Valid values are 1, 2, 4, 8, 12, 16, 24, and 32.
