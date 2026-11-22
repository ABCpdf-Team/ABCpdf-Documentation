# Black Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The black component. |

## Notes

Allows you to get or set the black level.

CMYK color components can range from 0 to 100.

Querying this property does not change the [ColorSpace](colorspace.md). This means you can obtain approximate CMYK values for RGB or Grayscale colors.

However if you change the value of this property the color will automatically be converted to CMYK.
