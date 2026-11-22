# EntryBaseVersion Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "BaseVersion" entry of the developer extensions dictionary object. |

## Notes

Represents the "BaseVersion" entry of the developer extensions dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 50, page 108.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=116)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25b, page 25.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=25)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 49, page 140.](https://www.iso.org/standard/63534.html)

The BaseVersion entry names the PDF version on which this extension is based, as a name object such as 1.7 or 2.0. A reader uses this to determine whether it supports the base version required by the extension.
