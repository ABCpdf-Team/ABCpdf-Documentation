# EntryU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "U" entry of the url alias dictionary object. |

## Notes

Represents the "U" entry of the url alias dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 356, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 392, page 804.](https://www.iso.org/standard/63534.html)

The U entry holds the final URL that served the content after any redirects. This is the URL from which the content was actually retrieved.
