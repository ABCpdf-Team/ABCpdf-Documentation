# EntryDecode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Decode" entry of the type 6 shading dictionary object. |

## Notes

Represents the "Decode" entry of the type 6 shading dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 84, page 196.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=204)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 83, page 244.](https://www.iso.org/standard/63534.html)

The Decode array maps the encoded coordinate and component integers to working values. It has the same structure as for other mesh shading types: min/max pairs for coordinates followed by min/max pairs for color components.
