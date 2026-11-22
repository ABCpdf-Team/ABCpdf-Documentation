# Flip Function

Flip the image horizontally or vertically

## Syntax

```csharp
void Flip(bool horizontal, bool vertical)
```

## Params

| Name | Description |
| :---: | --- |
| horizontal | Whether to flip the image horizontally. |
| vertical | Whether to flip the image vertically |

## Notes

This function flips the image horizontally or vertically or both. Flipping both horizontally and vertically is equivalent to a 180 degree rotation.

An image may have an associated bit mask or soft (alpha) mask. If this is the case the associated mask will be transformed as well.

Flipping horizontally will mean that pixels that were on the far right of the image will be moved to the far left and pixels on the left will be moved to the right.

Flipping horizontally will mean that pixels that were on the top of the image will be moved to the bottom and pixels that were on the bottom will be moved to the top.

After the Bitmap has been set the PixMap will be uncompressed. You may wish to compress it using a call like [CompressJpeg](compressjpeg.md) or [CompressFlate](../../streamobject/1-methods/compressflate.md).
