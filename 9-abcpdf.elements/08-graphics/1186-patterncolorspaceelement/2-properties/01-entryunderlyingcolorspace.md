# EntryUnderlyingColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | This property represents the underlying color space for this pattern. |

## Notes

This property represents the underlying color space for this pattern.

It is defined as part of the PDF 1.2 specification.

A [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 178.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=186)

The underlying color space is required when the Pattern space is used with an uncolored (PaintType 2) tiling pattern. It specifies the color space in which the current color is expressed when painting the pattern.

When the Pattern color space is used with a colored (PaintType 1) pattern or a shading pattern, no underlying color space is needed and this entry is absent.
