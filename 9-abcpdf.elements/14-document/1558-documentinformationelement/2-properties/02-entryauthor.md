# EntryAuthor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Author" entry of the document information dictionary object. |

## Notes

Represents the "Author" entry of the document information dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification. It was deprecated in PDF 2.0.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 317, page 550.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=558)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 349, page 712.](https://www.iso.org/standard/63534.html)

The Author entry holds the name of the person who created the document. In PDF 2.0, this is preferably recorded in XMP metadata using the dc:creator property.
