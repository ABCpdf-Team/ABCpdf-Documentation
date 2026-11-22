# ImageDisplaySmoothing Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `RasterSmoothing` | Default | No | The smoothing for displaying images. |

## Notes

This property specifies the smoothing for displaying images.

The RasterSmoothing enumeration may take the following values:

- Default - Specifies the default algorithm.
- Alias - Specifies no anti-aliasing.
- AntiAlias - Specifies anti-aliasing.

Some output formats support different smoothing types for displaying images.

For SWF, this affects the FillStyleType field of the FILLSTYLE structure for images.
