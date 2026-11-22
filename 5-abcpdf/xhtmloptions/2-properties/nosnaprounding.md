# NoSnapRounding Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to disable the snap rounding of coordinates and lengths. |

## Notes

This property applies to the [ABCGecko](2-forgecko.md) engine only.

The Gecko engine snap-rounds measurements at the output resolution. This does not make sense when the output format, such as PDF, has no inherent resolution. The units of measurement of PDF is points, which is too coarse for vector graphics.

Set this property to true to use the source measurements without snap rounding.
