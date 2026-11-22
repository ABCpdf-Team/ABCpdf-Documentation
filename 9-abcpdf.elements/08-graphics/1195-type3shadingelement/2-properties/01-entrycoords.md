# EntryCoords Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Coords" entry of the type 3 shading dictionary object. |

## Notes

Represents the "Coords" entry of the type 3 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 81, page 187.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=195)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 80, page 233.](https://www.iso.org/standard/63534.html)

The Coords array holds six values defining two circles: the centre x, centre y, and radius of the first circle, followed by the same three values for the second circle, all in shading space.

The color transition proceeds from the first circle toward the second, with intermediate circles interpolated between the two extremes.
