# EntryF Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "F" entry of the projection dictionary object. |

## Notes

Represents the "F" entry of the projection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=532)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 655.](https://www.iso.org/standard/63534.html)

The F entry gives the far clipping plane distance for perspective projection as a real number. Geometry beyond this distance is not rendered.
