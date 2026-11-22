# EntryPickTrayByPDFSize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "PickTrayByPDFSize" entry of the viewer preferences dictionary object. |

## Notes

Represents the "PickTrayByPDFSize" entry of the viewer preferences dictionary object.

It is an optional entry defined as part of the PDF 1.7 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 150, page 365.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=373)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.1, page 28.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 147, page 437.](https://www.iso.org/standard/63534.html)

When true the viewer should select the paper tray based on the PDF page size rather than a user-selected default, useful for documents that mix page sizes requiring different paper stocks.
