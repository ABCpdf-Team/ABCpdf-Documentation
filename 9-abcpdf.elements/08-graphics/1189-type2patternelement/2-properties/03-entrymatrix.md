# EntryMatrix Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Matrix" entry of the type 2 pattern dictionary object. |

## Notes

Represents the "Matrix" entry of the type 2 pattern dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 76, page 181.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=189)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 75, page 225.](https://www.iso.org/standard/63534.html)

The Matrix maps the pattern's coordinate system to the default user space of the context in which the pattern is painted. It controls the position, scale, and orientation of the shading gradient relative to the page.
