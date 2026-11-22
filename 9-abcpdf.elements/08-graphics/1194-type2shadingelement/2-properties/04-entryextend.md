# EntryExtend Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<bool>` | null | No | Represents the "Extend" entry of the type 2 shading dictionary object. |

## Notes

Represents the "Extend" entry of the type 2 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains bool representing a PDF boolean objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 80, page 186.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=194)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 79, page 231.](https://www.iso.org/standard/63534.html)

The Extend array contains two booleans. The first controls whether the starting color extends beyond the start point of the axis; the second controls whether the ending color extends beyond the end point. When true for an endpoint, the terminal color fills the area on that side indefinitely.
