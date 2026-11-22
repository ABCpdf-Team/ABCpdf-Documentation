# EntryH Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "H" entry of the web capture command dictionary object. |

## Notes

Represents the "H" entry of the web capture command dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 357, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 393, page 805.](https://www.iso.org/standard/63534.html)

The H entry holds the HTTP request headers sent with this capture command as a byte string, preserving request parameters for traceability and reproducibility.
