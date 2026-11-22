# EntryExtensionLevel Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int?` | null | No | Represents the "ExtensionLevel" entry of the developer extensions dictionary object. |

## Notes

Represents the "ExtensionLevel" entry of the developer extensions dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 50, page 108.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=116)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 3.25b, page 25.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=25)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 49, page 140.](https://www.iso.org/standard/63534.html)

The ExtensionLevel entry is an integer identifying the specific revision of the developer extension. Higher numbers indicate later revisions. A reader that supports a given extension must support all extension levels up to and including the one declared in the document.
