# Recolor Function

Converts the pages from one color space to another.

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

Converts the pages from one color space to another.

This method calls the [Page.Recolor](../../page/1-methods/recolor.md) method on all Page objects within this group of pages.
