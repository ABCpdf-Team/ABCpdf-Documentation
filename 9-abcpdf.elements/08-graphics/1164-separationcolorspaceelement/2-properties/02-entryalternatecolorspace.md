# EntryAlternateColorSpace Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ColorSpaceElement`](../../0020-colorspaceelement/index.md) | null | No | This property represents the alternate color space for this Separation color space. |

## Notes

This property represents the alternate color space for this Separation color space.

A [ColorSpaceElement](../../0020-colorspaceelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 156.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=164)

The alternate color space provides a fallback rendering for devices that cannot produce the named colorant. It must have a color component count consistent with the output of the tint transform function.

When the target colorant is not available, a conforming reader uses the alternate space and tint transform together to compute an approximation of the intended color.
