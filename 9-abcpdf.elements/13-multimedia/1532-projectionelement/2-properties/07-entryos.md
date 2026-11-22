# EntryOS Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | null | No | Represents the "OS" entry of the projection dictionary object. |

## Notes

Represents the "OS" entry of the projection dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a double representing a PDF numeric object.

It should have a positive value.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 305, page 524.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=532)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 316, page 655.](https://www.iso.org/standard/63534.html)

The OS entry gives the orthographic scale for orthographic projection as a real number. Larger values zoom the view out; smaller values zoom in. This scales the orthographic projection window.
