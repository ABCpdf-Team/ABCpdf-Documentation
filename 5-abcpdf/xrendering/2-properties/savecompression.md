# SaveCompression Property

## Notes

This property determines the preferred compression method.

Not all file formats support all compression methods. Not all compression methods support all color spaces. This is why this property indicates a preferred method.

The Compression enumeration may take the following values:

In general this property is most useful when producing output in formats like TIFF which support a range of color spaces and compression methods.

## Example

The following example shows how to render a PDF into a multipage G4 compressed Fax TIFF using different vertical and horizontal resolutions.

[C#] using var doc = new Doc(); doc.Read("../Rez/spaceshuttle.pdf"); // set up the rendering parameters doc.Rendering.ColorSpace = XRendering.ColorSpaceType.Gray; doc.Rendering.BitsPerChannel = 1; doc.Rendering.DotsPerInchX = 200; doc.Rendering.DotsPerInchY = 400; // loop through the pages int n = doc.PageCount; for (int i = 1; i <= n; i++) { doc.PageNumber = i; doc.Rect.String = doc.CropBox.String; doc.Rendering.SaveAppend = (i != 1); doc.Rendering.SaveCompression = XRendering.Compression.G4; doc.Rendering.Save("fax.tif"); }

