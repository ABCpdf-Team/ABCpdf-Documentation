# EntryDecode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Decode" entry of the type 4 shading dictionary object. |

## Notes

Represents the "Decode" entry of the type 4 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 189.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=197)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 237.](https://www.iso.org/standard/63534.html)

The Decode array maps the encoded integer coordinate and component values to the working ranges used during rendering. It contains 2 × (number of coordinates per vertex + number of components per vertex) values, arranged as min/max pairs.

The first two pairs map the x and y coordinate integers; subsequent pairs map each color component. Linear interpolation between the min and max converts an integer to its floating-point value.
