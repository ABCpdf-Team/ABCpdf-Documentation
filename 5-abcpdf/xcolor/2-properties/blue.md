# Blue Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The blue component. |

## Notes

Allows you to get or set the blue component.

RGB color components can range from 0 to 255.

Querying this property does not change the [ColorSpace](colorspace.md). This means you can obtain approximate RGB values for CMYK or Grayscale colors.

However if you change the value of this property the color will automatically be converted to RGB.

## Example

Also see example code in: [Doc FillRect Function](../../doc/1-methods/fillrect.md).
