# DotsPerInch Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 72.0 | No | The output resolution in dots per inch (DPI). |

## Notes

This property determines the resolution of the output image.

Because PDF documents specify distances in physical units (typically points) a resolution unit is needed to convert these physical units to pixel based units.

For example a document 612 points wide rendered at 144 DPI will result in an output image 1224 pixels wide.

Changing this property will change the values of both the [DotsPerInchX](dotsperinchx.md) and [DotsPerInchY](dotsperinchy.md) properties.

## Example

See the [DefaultHalftone](defaulthalftone.md) property.

Also see example code in: [ABCpdf PDF Rendering Example](../../../4-examples/19-rendering.md), [XRendering AntiAliasPolygons Property](antialiaspolygons.md), [XRendering AntiAliasText Property](antialiastext.md), [XRendering ColorSpace Property](colorspace.md), [XRendering DefaultHalftone Property](defaulthalftone.md), [XRendering IccCmyk Property](icccmyk.md), [XRendering Overprint Property](overprint.md), [XRendering SaveQuality Property](savequality.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [Page Thumbnail Property](../../../6-abcpdf.objects/page/2-properties/thumbnail.md), [PixMap GetBitmap Function](../../../6-abcpdf.objects/pixmap/1-methods/getbitmap.md), [RenderOperation Save Function](../../../8-abcpdf.operations/6-renderoperation/1-methods/save.md).
