# MonochromeImageCompression Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`CompressionType`](../../../6-abcpdf.objects/streamobject/2-properties/compression.md) | Ccitt | No | The target compression type for the re-encoding of monochrome images. |

## Notes

The target compression type for the re-encoding of monochrome images. Most monochrome images are black and white.

When the [CompressImages](compressimages.md) setting is used this option is used to determine the type of compression to be used for images in this color space. Images are recompressed if they are resampled or if the target compression type is lossy. They are not recompressed if they already use the target compression and the compression type is lossless.
