# EntryDS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "DS" entry of the free text annotation object. |

## Notes

Represents the "DS" entry of the free text annotation object.

It is an optional entry defined as part of the PDF 1.5 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 174, page 396.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=404)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 177, page 481.](https://www.iso.org/standard/63534.html)

The default style string is a CSS-like specification of text formatting for rich-content rendering. It applies when the RC entry is absent or when a viewer falls back to plain text.
