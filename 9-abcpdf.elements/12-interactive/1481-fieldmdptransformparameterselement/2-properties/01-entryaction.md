# EntryAction Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Represents the "Action" entry of the fieldmdp transform parameters dictionary object. |

## Notes

Represents the "Action" entry of the fieldmdp transform parameters dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a string representing a PDF name object.

This item may take one of the following valid values:.

- All
- Include
- Exclude

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 256, page 473.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=481)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 259, page 573.](https://www.iso.org/standard/63534.html)

All covers every field in the form. Include covers only the fields named in the Fields array. Exclude covers all fields except those named in Fields.
