# EntryCreator Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "Creator" entry of the mac os file information dictionary object. |

## Notes

Represents the "Creator" entry of the mac os file information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 47, page 105.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=113)

The Creator entry holds the four-character application creator code as a byte string. In classic MacOS, the creator code identifies which application owns a file and should be used to open it.
