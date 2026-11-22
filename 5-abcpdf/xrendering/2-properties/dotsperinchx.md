# DotsPerInchX Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 72.0 | No | The horizontal output resolution in dots per inch (DPI). |

## Notes

This property determines the horizontal resolution of the output image.

Because PDF documents specify distances in physical units (typically points) a resolution unit is needed to convert these physical units to pixel based units.

For example a document 612 points wide rendered at 144 DPI will result in an output image 1224 pixels wide.

## Example

See the [SaveCompression](savecompression.md) property.

Also see example code in: [XRendering SaveCompression Property](savecompression.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md).
