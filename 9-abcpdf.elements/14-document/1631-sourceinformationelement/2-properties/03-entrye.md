# EntryE Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "E" entry of the source information dictionary object. |

## Notes

Represents the "E" entry of the source information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 355, page 623.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=631)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 391, page 803.](https://www.iso.org/standard/63534.html)

The E entry records the HTTP Content-Encoding used for the captured content as a byte string, preserving the transfer encoding at capture time.
