# Recolor Function

Converts the page from one color space to another.

## Syntax

*C#*

`void Recolor(`[`ColorSpace`](../../colorspace/index.md)` newSpace, bool convertAnnotations)`  
`void Recolor(`[`ColorSpace`](../../colorspace/index.md)` newSpace, bool convertAnnotations, out `[`PixMap`](../../pixmap/index.md)`[] recoloredPixMaps)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| newSpace | The destination color space. |
| convertAnnotations | Whether to convert the color space of annotation appearance streams. |
| recoloredPixMaps | All the PixMaps which were recolored as a result of the call. |

## Notes

Converts the page from one color space to another.

All images used on the page are converted to the new color space. All color operators used in the page content stream are converted to the new color space.

Annotations and fields are not part of the page but instead float over the page. You can choose whether to convert the appearance stream of any annotations or leave them in their native color space.

Colors can only be sensibly mapped from one color space to another if we know something about the characteristics of the color space. If your color spaces do not contain this information (e.g. if they are device color spaces) then ABCpdf will use a default color profile.

An exception will be thrown if the operation is not possible. This may happen if the Page is not in an ObjectSoup or if the ColorSpace object is in some way invalid.

As part of the Recolor process it is necessary to call [PixMap.Recolor](../../pixmap/1-methods/recolor.md) on all the images used on the page. After the Recolor process has been completed these [PixMap](../../pixmap/index.md) objects will no longer be compressed. You may wish to compress them using the [StreamObject.Compress](../../streamobject/1-methods/compress.md) method.
