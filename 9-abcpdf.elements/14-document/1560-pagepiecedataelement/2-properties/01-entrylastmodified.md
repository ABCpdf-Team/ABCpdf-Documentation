# EntryLastModified Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "LastModified" entry of the page-piece data dictionary object. |

## Notes

Represents the "LastModified" entry of the page-piece data dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This is encoded as a date string. For details see the [StringAtom.DateToString](../../../../7-abcpdf.atoms/stringatom/1-methods/datetostring.md) and [StringAtom.StringToDate](../../../../7-abcpdf.atoms/stringatom/1-methods/stringtodate.md) functions.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 319, page 552.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=560)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 351, page 715.](https://www.iso.org/standard/63534.html)

The LastModified entry records when the associated application last modified the page or object as a PDF date string. A processor compares this with the object own modification date to determine whether the private data is still valid.
