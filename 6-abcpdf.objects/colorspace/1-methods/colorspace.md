# ColorSpace Constructor

Construct a ColorSpace.

## Syntax

*C#*

`ColorSpace(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`  
`ColorSpace(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup, `[`ColorSpaceType`](../2-properties/colorspacetype.md)` type)`

## Params

| Name | Description |
| :---: | --- |
| soup | The ObjectSoup to contain the newly created StreamObject. |
| type | The type of color space required. |

## Notes

Create a ColorSpace.

If a color space is not specified the default of DeviceRGB will be used.

## Example

See the [PixMap.Recolor](../../pixmap/1-methods/recolor.md) function.
