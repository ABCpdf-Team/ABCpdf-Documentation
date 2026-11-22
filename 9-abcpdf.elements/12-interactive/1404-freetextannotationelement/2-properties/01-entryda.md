# EntryDA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "DA" entry of the free text annotation object. |

## Notes

Represents the "DA" entry of the free text annotation object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 396.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=404)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 480.](https://www.iso.org/standard/63534.html)

The default appearance string is a fragment of PDF content-stream syntax that sets the font, font size, and colour used to render the annotation text, using the same syntax as the DA entry in a form field.
