# Width Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | No | The width of the image in pixels. |

## Notes

The width of the image in pixels.

Setting this property only changes the width recorded for the image. It does not change the image data, so the data and the dimensions of the image will no longer match. In general you should only set this property if you are also going to change the image data yourself.

To change the size of an image use the [Resize](../1-methods/resize.md) method.

## Example

Also see example code in: [Page GetBitmap Function](../../page/1-methods/getbitmap.md).
