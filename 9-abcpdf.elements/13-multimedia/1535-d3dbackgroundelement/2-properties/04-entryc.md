# EntryC Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C" entry of the 3d background dictionary object. |

## Notes

Represents the "C" entry of the 3d background dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 306, page 527.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=535)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 317, page 659.](https://www.iso.org/standard/63534.html)

The C entry holds the background colour as an array of component values in the colour space named by CS. For SC, the array holds DeviceRGB values.
