# SaveQuality Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 75 | No | The quality for lossy image compression. |

## Notes

This property determines the quality of output images that use lossy compression in document export.

Under some circumstances it may be necessary to decompress JPEG and JPEG 2000 images that are stored in a PDF and to recompress them for output. This typically occurs when exporting to another format which does not support exactly the same features as are supported in PDF.

This property specifies the quality for the recompression of such images. This is only used during export to XPS, DOCX, HTML, and WebGL.
