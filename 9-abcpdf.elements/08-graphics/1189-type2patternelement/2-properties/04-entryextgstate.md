# EntryExtGState Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`GraphicsStateParameterElement`](../../1136-graphicsstateparameterelement/index.md) | null | No | Represents the "ExtGState" entry of the type 2 pattern dictionary object. |

## Notes

Represents the "ExtGState" entry of the type 2 pattern dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains a [GraphicsStateParameterElement](../../1136-graphicsstateparameterelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 76, page 181.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=189)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 75, page 225.](https://www.iso.org/standard/63534.html)

The ExtGState entry references a graphics state parameter dictionary that is applied when the shading pattern is painted. This allows transparency settings such as alpha and blend mode to be set as part of the pattern definition.
