# ResizeImages Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to resize images for vector output. |

## Notes

Whether to resize images for vector output.

If this option is set then raster images will be resized to the current resolution before embedding in the vector format. This can reduce file size when producing formats like EMF that are destined for a particular printer at a particular resolution.

Currenlty this option only takes effect for EMF output. However in the future it may be extended to other vector formats such as Postscript.
