# EntryCoords Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Coords" entry of the type 2 shading dictionary object. |

## Notes

Represents the "Coords" entry of the type 2 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 80, page 186.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=194)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 79, page 231.](https://www.iso.org/standard/63534.html)

The Coords array holds four values: the x and y of the starting point and the x and y of the ending point of the color axis, both in shading space. The color transition runs along the line between these two points.
