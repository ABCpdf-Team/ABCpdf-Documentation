# Red Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The red component. |

## Notes

Allows you to get or set the red component.

RGB color components can range from 0 to 255.

Querying this property does not change the [ColorSpace](colorspace.md). This means you can obtain approximate RGB values for CMYK or Grayscale colors.

However if you change the value of this property the color will automatically be converted to RGB.
