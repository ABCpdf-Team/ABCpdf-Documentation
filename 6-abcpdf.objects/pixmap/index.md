# PixMap Class

A bitmap based image.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          WebSupergoo.ABCpdf14.Objects.PixMap`

`Implements: IEquatable<PixMap>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromXImage](1-methods/fromximage.md) | PixMap static constructor. |
| ⚠ [CompressCcitt](1-methods/compressccitt.md) | Compresses the image using CCITT compression. |
| ⚠ [CompressJbig2](1-methods/compressjbig2.md) | Compresses the image using JBIG2 compression. |
| ⚠ [CompressJpeg](1-methods/compressjpeg.md) | Compresses the image using JPEG compression. |
| ⚠ [CompressJpx](1-methods/compressjpx.md) | Compresses the image using JPEG 2000 compression. |
| [Decompress](1-methods/decompress.md) | Decompress the data in the stream using on-the-fly resizing. |
| [Flip](1-methods/flip.md) | Flip the image horizontally or vertically. |
| ⚠ [GetBitmap](1-methods/getbitmap.md) | Get the PixMap image as a System.Drawing.Bitmap. |
| ⚠ [Realize](1-methods/realize.md) | Converts the image to component color. |
| ⚠ [Recolor](1-methods/recolor.md) | Converts the image from one color space to another. |
| ⚠ [Resample](1-methods/resample.md) | Changes the number of bits per color component. |
| ⚠ [Resize](1-methods/resize.md) | Resizes the image. |
| ⚠ [Rotate](1-methods/rotate.md) | Rotate the image clockwise. |
| [Save](1-methods/save.md) | Saves the PixMap to stream attempting to preserve resolution, color space and depth as far as the output format allows. |
| [SetAlpha](1-methods/setalpha.md) | Sets a constant alpha value (0-255) for this image. |
| [SetBitmap](1-methods/setbitmap.md) | Set the content of the object as a Bitmap. |
| [SetChromakey](1-methods/setchromakey.md) | Sets a chromakey transparent color for this image. |
| [ToGrayscale](1-methods/tograyscale.md) | Converts the image to grayscale. |

## Properties

| Property | Description |
| --- | --- |
| [AutoFix](2-properties/autofix.md) | Whether to automatically fix corrupt images. |
| [BitsPerComponent](2-properties/bitspercomponent.md) | The number of bits per color component. |
| [ColorSpace](2-properties/colorspace.md) | The ColorSpace for this image. |
| [ColorSpaceType](2-properties/colorspacetype.md) | The ColorSpace for this image. |
| [Components](2-properties/components.md) | The number of color components for each pixel. |
| [Height](2-properties/height.md) | The height of the image in pixels. |
| [ImageMask](2-properties/imagemask.md) | Whether this image is a one bit image mask. |
| [Mask](2-properties/mask.md) | Any one bit image mask associated with this image. |
| [Matte](2-properties/matte.md) | Any matte associated with this soft mask. |
| [SMask](2-properties/smask.md) | Any soft image mask associated with this image. |
| [Width](2-properties/width.md) | The width of the image in pixels. |
