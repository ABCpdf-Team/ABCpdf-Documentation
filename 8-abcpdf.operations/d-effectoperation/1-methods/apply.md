# Apply Function

Apply the effect to an image.

## Syntax

```csharp
void Apply(PixMap pixMap)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| pixMap | The PixMap to which the image should be applied. |

## Notes

Apply the effect to an image specified as a [PixMap](../../../6-abcpdf.objects/pixmap/index.md).

Effects normally involve wholesale changes and so it may well be necessary to change the color space and depth in order to apply the effect. If the [AutoRestore](../2-properties/autorestore.md) property is set then the PixMap will be restored to a similar color space after processing and it will be recompressed at an appropriate quality. This default is generally what is required.

If the AutoRestore property is not set then the final output may well have different characteristics such as color space and depth. In general the final image will be uncompressed eight bit RGB no matter what type of PixMap was supplied.

If you are relying on particular characteristics present in the original PixMap then you should set the AutoRestore property to false and then convert or recolor it after the effect has been applied. Since the final image will be left uncompressed you will likely want to recompress it using an appropriate schema.

## Example

Also see example code in: [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md).
