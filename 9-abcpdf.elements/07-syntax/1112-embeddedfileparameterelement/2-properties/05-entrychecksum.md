# EntryCheckSum Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "CheckSum" entry of the embedded file parameter dictionary object. |

## Notes

Represents the "CheckSum" entry of the embedded file parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 46, page 104.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=112)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 45, page 137.](https://www.iso.org/standard/63534.html)

The CheckSum entry holds a 16-byte MD5 digest of the uncompressed file data. A reader that extracts the file can compute the MD5 digest and compare it with this value to verify that the embedded data is intact.
