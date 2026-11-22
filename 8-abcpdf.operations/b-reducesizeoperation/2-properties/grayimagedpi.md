# GrayImageDpi Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `double` | 150.0 | No | The target resolution for the resampling of grayscale images. |

## Notes

The target resolution for the resampling of grayscale images.

When the [CompressImages](compressimages.md) setting is set this option is used to determine the resolution at images in this color space should be targeted. Images are scaled down if they are too large but not up if they are too small.
