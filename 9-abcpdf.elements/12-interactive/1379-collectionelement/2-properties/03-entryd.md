# EntryD Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "D" entry of the collection dictionary object. |

## Notes

Represents the "D" entry of the collection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

This string contains raw byte data. So it looks like a string but really it is just a wrapper for data.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 155, page 371.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=379)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.6, page 29.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=29)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 153, page 446.](https://www.iso.org/standard/63534.html)

The initial document entry references the embedded file that should be selected or highlighted when the portfolio is first opened.
