# EntryID Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<string>` | null | No | Represents the "ID" entry of the reference dictionary object. |

## Notes

Represents the "ID" entry of the reference dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains strings, representing PDF string objects.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 97, page 221.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=229)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 95, page 272.](https://www.iso.org/standard/63534.html)

The ID entry holds the document identifier of the external file, matching the format of the trailer ID array. A conforming reader may use this identifier to confirm that the correct version of the external document is being accessed.
