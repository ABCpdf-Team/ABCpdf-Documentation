# DeInline Function

Makes any inline images into external images.

## Syntax

*C#*

`void DeInline(bool convertAnnotations)`  
`void DeInline(bool convertAnnotations, out `[`PixMap`](../../pixmap/index.md)`[] detachedPixMaps)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| convertAnnotations | Whether to convert the color space of annotation appearance streams. |
| detachedPixMaps | All the PixMaps which were extracted as a result of the call. |

## Notes

Makes any inline images into external images.

Images in PDF documents are generally held as external object and are then referenced from the page content stream. However it is also possible to inline small images and embed the binary image data directly into the PDF content stream. This is not always desirable as it complicates certain types of PDF processing.

This method allows you to extract such inline images and convert them into standard external PixMap objects.
