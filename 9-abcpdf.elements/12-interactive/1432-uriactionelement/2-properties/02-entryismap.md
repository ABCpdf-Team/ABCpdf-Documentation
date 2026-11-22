# EntryIsMap Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "IsMap" entry of the uri action object. |

## Notes

Represents the "IsMap" entry of the uri action object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 206, page 424.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=432)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 210, page 515.](https://www.iso.org/standard/63534.html)

When true and the action is triggered by a mouse click the viewer appends the click coordinates to the URI as a query parameter, supporting server-side image map processing.
