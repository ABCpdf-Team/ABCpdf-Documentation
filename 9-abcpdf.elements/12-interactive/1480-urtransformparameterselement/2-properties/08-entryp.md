# EntryP Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "P" entry of the ur transform parameters dictionary object. |

## Notes

Represents the "P" entry of the ur transform parameters dictionary object.

It is an optional entry defined as part of the PDF 1.6 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 255, page 473.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=481)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 258, page 572.](https://www.iso.org/standard/63534.html)

When true this entry indicates that the document has a rights-enabling signature that should be taken into account by the viewer when determining which operations are permitted.
