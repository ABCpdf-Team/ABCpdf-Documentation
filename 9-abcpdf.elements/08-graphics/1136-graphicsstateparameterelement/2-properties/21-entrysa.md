# EntrySA Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "SA" entry of the graphics state parameter dictionary object. |

## Notes

Represents the "SA" entry of the graphics state parameter dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 58, page 130.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=138)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 57, page 163.](https://www.iso.org/standard/63534.html)

The stroke adjustment flag enables automatic compensation for the effects of device pixel alignment on thin strokes. When true, the renderer may adjust stroke position and width slightly to improve visual appearance at low resolutions.

Stroke adjustment is advisory. On high-resolution output devices the effect is negligible. On screen renderers, it can prevent thin lines from appearing inconsistent due to sub-pixel alignment.
