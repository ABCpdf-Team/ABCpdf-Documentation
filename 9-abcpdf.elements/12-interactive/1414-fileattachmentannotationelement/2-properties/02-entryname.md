# EntryName Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Name" entry of the file attachment annotation object. |

## Notes

Represents the "Name" entry of the file attachment annotation object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

The PDF specification states that this item assumes a value of "PushPin" if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 184, page 406.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=414)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 187, page 492.](https://www.iso.org/standard/63534.html)

The Name entry selects the icon style: Graph, Paperclip, PushPin, or Tag. An unrecognised name results in a viewer-defined default icon.
