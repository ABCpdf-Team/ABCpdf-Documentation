# EntryT Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "T" entry of the fdf field dictionary object. |

## Notes

Represents the "T" entry of the fdf field dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF string object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 246, page 461.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=469)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 249, page 559.](https://www.iso.org/standard/63534.html)

The partial field name matches the T entry in the corresponding AcroForm field dictionary. Combining T values from root to leaf with period separators identifies the target field.
