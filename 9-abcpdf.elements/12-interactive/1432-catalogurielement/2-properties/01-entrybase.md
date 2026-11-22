# EntryBase Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Base" entry of the catalog uri dictionary object. |

## Notes

Represents the "Base" entry of the catalog uri dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 207, page 424.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=432)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 211, page 515.](https://www.iso.org/standard/63534.html)

The base URI is a string giving an absolute URI. Relative URIs in URI actions within the document are resolved against this base using standard RFC 3986 relative-reference resolution.
