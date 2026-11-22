# EntryAntiAlias Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool?` | null | No | Represents the "AntiAlias" entry of the shading dictionary object. |

## Notes

Represents the "AntiAlias" entry of the shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a bool representing a PDF boolean object.

The PDF specification states that this item assumes a value of false if no value has been provided.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 78, page 183.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=191)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 77, page 228.](https://www.iso.org/standard/63534.html)

The AntiAlias flag, when true, advises the renderer to apply anti-aliasing when painting the shading. The default is false. Anti-aliasing can improve the visual smoothness of shading edges and gradient transitions, especially at screen resolution.

The renderer may ignore this flag if it does not support anti-aliasing for shadings, or if the output device does not benefit from it.
