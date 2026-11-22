# EntryLength Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Length" entry of the stream object. |

## Notes

Represents the "Length" entry of the stream object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

It describes the number of bytes of data in the stream.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

The Length entry gives the exact number of bytes from the end of the stream keyword line to the last byte before the endstream keyword. It must be present in every stream dictionary and must be accurate.

A conforming reader uses Length to locate the endstream keyword without scanning the stream data. Inaccurate Length values cause parse errors or security vulnerabilities.
