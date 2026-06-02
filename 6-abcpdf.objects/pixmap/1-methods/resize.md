# Resize Function

## Syntax

[C#] void Resize(int width, int height) void Resize(int width, int height, Interpolation interpolation) void Resize(int width, int height, Interpolation interpolation, bool allowDepthChange)

may throw Exception()

## Params

## Notes

Resizes the image to a specified width and height using a specified interpolation method.

The interpolation parameter should be viewed as a request rather than a command because not all types of interpolation can be used on all types of image. If the method you specify is not appropriate then ABCpdf will automatically select a suitable alternative.

After an image has been resized it is no longer compressed. You may wish to compress it using the StreamObject.Compress method.

The Interpolation enumeration may take the following values:

The Auto setting allows ABCpdf to automatically choose an appropriate interpolation algorithm given the type of image and the type of scaling. If you are aiming to maximize quality this is the setting you should use.

The nearest neighbor algorithm is the fastest but also the lowest quality method. It simply finds the nearest pixel in the source image and maps it through to the destination image. However it is also the only method which can be used for Indexed color images.

The Linear, Cubic and Lanzcos methods are progressively higher quality methods based around a weighted average of pixels from the source image. However they are also progressively slower. The Lanzcos function used is the three lobed variety.

The Linear, Cubic and Lanzcos methods use weighted averages from a limited number of pixels in the source image. For large size reductions this may result in information from some pixels in the source image being completely discarded. The super method aims to work around this issue by increasing coverage to all the pixels in the source image. It only works if an image is being reduced in both height and width.

This function is optimized for resizing one, three and four component images at precisions of eight or sixteen bits per component. If you allow depth changes then this will allow monotone images to change to a greater bit depth when being reduced in size.

## Example

Here we resize all the images in a document to a quarter of their previous resolution.

[C#] using var doc = new Doc(); doc.Read("../Rez/spaceshuttle.pdf"); foreach (IndirectObject io in doc.ObjectSoup) { if (io is PixMap) { var pm = (PixMap)io; pm.Realize(); // eliminate indexed color images pm.Resize(pm.Width / 4, pm.Height / 4); } } doc.Save("pixmapresize.pdf");

spaceshuttle.pdf [page 1]

pixmapresize.pdf [page 1]

