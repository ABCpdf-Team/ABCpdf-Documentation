# FrameCount Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | See description. | Yes | The number of frames in the image. |

## Notes

TIFF and GIF files may contain more than one image. The FrameCount property reflects the number of images found in the file. You can select different images using the [Frame](frame.md) property.

Multi-frame TIFF images are generally used for one of two purposes. Sometimes multiple copies of the same image are embedded at different sizes to allow previews to be obtained quickly and easily. This type of multi-frame image is generally created for print purposes. Sometimes multiple pages of a document may be embedded in a TIFF. This type of multi-frame image is generally created by document scanning software or fax software.

Multi-frame GIF images are often called animated GIFs. Each image represents a frame of the animation. Similarly Flash / SWF movies are frame based and this property allows you to access the total number of frames in the movie.

PostScript is a programming language. So a PostScript program may output a different number of pages each time it is run. For this reason it is not possible to reliably determine the number of pages in a PostScript file until it is actually displayed. As a result EPS and PS files always have a FrameCount of one no matter how many pages they may display. However it is reasonably safe to assume that EPS files only ever contain one page of content.

## Example

See the [Frame](frame.md) property.
