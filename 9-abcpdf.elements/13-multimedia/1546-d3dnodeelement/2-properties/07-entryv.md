# EntryV Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "V" entry of the 3d node dictionary object. |

## Notes

Represents the "V" entry of the 3d node dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 312, page 538.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=546)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 323, page 671.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 9.47, page 58.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=66)

The V entry, when false, hides this node so it is not rendered in the view. When true or absent, the node is visible according to its default visibility state in the model.
