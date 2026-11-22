# ImageMask Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | n/a | No | Whether this image is a one bit image mask. |

## Notes

Whether this image is a one bit image mask.

Setting this value to true will change the PixMap to a mask. There are certain restrictions on masks which must be checked before this is done. Namely, if the mask has a [Mask](mask.md) of its own, or if the [BitsPerComponent](bitspercomponent.md) is not one then an exception will be raised.

Changing the value to false will remove the mask entry from this PixMap and convert the color space to grayscale. It is your responsibility to detach this object from any PixMaps which may be using it as a mask.
