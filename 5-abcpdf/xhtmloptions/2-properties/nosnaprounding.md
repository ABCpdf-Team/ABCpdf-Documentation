# NoSnapRounding Property

## Notes

This property applies to the ABCGecko engine only.

The Gecko engine snap-rounds measurements at the output resolution. This does not make sense when the output format, such as PDF, has no inherent resolution. The units of measurement of PDF is points, which is too coarse for vector graphics.

Set this property to true to use the source measurements without snap rounding.

## Example

None.

