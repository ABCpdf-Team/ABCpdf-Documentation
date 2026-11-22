# Rotate Function

Rotate the image clockwise

## Syntax

```csharp
void Rotate(int degrees)
```

*C#*

⚠ `may throw ArgumentOutOfRangeException()`

## Params

| Name | Description |
| :---: | --- |
| degrees | The number of degrees clockwise that the image should be rotated. This must be a multiple of 90. |

## Notes

This function rotates the PixMap image clockwise. The rotation angle must be a multiple of 90. If an invalid number of degrees is specified, then an ArgumentOutOfRangeException will be thrown.

An image may have an associated bit mask or soft (alpha) mask. If this is the case, the associated mask will be transformed as well.

When a PixMap is drawn on a page, it is scaled to fit into a particular location. The scaling is separate from the PixMap itself. Rotating by 90 or 270 degrees will swap the width and height of the PixMap. Because the scaling of drawn copies is separate from the PixMap itself, any previously drawn instances of the PixMap may appear to have an incorrect aspect ratio.

After the Bitmap has been set, the PixMap will be uncompressed. You may wish to compress it using a call like [CompressJpeg](compressjpeg.md) or [CompressFlate](../../streamobject/1-methods/compressflate.md).
