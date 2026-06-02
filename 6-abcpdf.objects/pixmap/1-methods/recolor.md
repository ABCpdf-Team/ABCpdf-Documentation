# Recolor Function

Converts the image from one color space to another.

## Syntax

[C#]

```csharp
void Recolor(<a href="../../colorspace/default.htm">ColorSpace</a> space)void Recolor(<a href="../../colorspace/default.htm">ColorSpace</a> space, RenderingIntent intent)
```

## Params

| **Name** | **Description** |
| --- | --- |
| space | The destination color space. |
| intent | The rendering intent enumeration. If no intent is provided the default for the image (typically RelativeColorimetric) is used. |

## Notes

Converts the image from one color space to another.

Calling this method results in the pixels within the PixMap image being mapped from the current color space to the new color space. The new [ColorSpace](colorspace/default.md) is then assigned to the PixMap and (if it is not already there) added to the PixMap [ObjectSoup](2-objectsoup/default.md).

Colors can only be sensibly mapped from one color space to another if we know something about the characteristics of the color space. If your color spaces do not contain this information (e.g. if they are device color spaces) then ABCpdf will use a default color profile.

An exception will be thrown if the operation is not possible. This may happen if the PixMap is not in an ObjectSoup or if the ColorSpace object is in some way invalid.

If the [ImageMask](2-properties/imagemask.md) property is true the image has no color space and is implicitly black and white. Image masks cannot be anything other than black and white so trying to convert an image mask to another color space will result in an exception being raised.

The rendering intent determines how out of gamut colors are handled. For full details see the [RecolorOperation.RenderingIntent](8-abcpdf.operations/3-recoloroperation/2-properties/renderingintent.md) property.

If the image is a palette based image, the palette will be rexcolored rather than the pixels themselves. This is a faster more accurate, way to work which preserves the structure of the image as far as possible.

After the PixMap has been Recolored it may no longer compressed and is likely to have a [BitsPerComponent](2-properties/bitspercomponent.md) of eight or sixteen. You may wish to compress it using the [StreamObject.Compress](streamobject/1-methods/compress.md) method.

## Example

Here we change all the images in a document to CMYK.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../Rez/spaceshuttle.pdf");
List<PixMap> theList = new List<PixMap>();
// find all the PixMap objects in the soup
foreach (IndirectObject obj in doc.ObjectSoup) {
  var p = obj as PixMap;
  if (p != null)
    theList.Add(p);
}
// add our destination color space
var cs = new ColorSpace(doc.ObjectSoup);
cs.IccProfile = new IccProfile(doc.ObjectSoup, "../Rez/abccmyk.icc");
// convert images to our color space
for (int i = 0; i < theList.Count; i++) {
  var p = theList[i];
  p.Recolor(cs, RenderingIntent.Perceptual);
  p.CompressJpeg(75);
}
doc.Save("pixmaprecolor.pdf");
```

![](../../../images/pdf/shuttle_p1.png)
spaceshuttle.pdf [page 1]

