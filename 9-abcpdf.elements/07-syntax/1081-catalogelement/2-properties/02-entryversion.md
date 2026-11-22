# EntryVersion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Version" entry of the catalog dictionary object. |

## Notes

Represents the "Version" entry of the catalog dictionary object.

It is an optional entry defined as part of the PDF 1.4 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 28, page 73.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=81)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25, page 23.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=23)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 29, page 98.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 242, page 458.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=466)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 245, page 555.](https://www.iso.org/standard/63534.html)

The Version entry in the catalog, when present, overrides the header version of the PDF file. A writer may use this to update the effective PDF version during an incremental update without modifying the file header.

The effective version of a PDF file is the greater of the header version and the catalog Version entry. Readers must check both when determining the set of features they must support for the document.
