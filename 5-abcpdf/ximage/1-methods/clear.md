# Clear Function

Clears the image.

## Syntax

*C#*

`void Clear()`  
`void Clear(out `[`XReadOptions`](../../xreadoptions/index.md)` outOptions, out Stream outStream)`

## Params

| Name | Description |
| :---: | --- |
| outOptions | The [XReadOptions](../../xreadoptions/index.md) used to create the object. |
| outStream | The Stream used to create the object if [NeedsStream](../2-properties/needsstream.md) is true. |

## Notes

Use this method to release resources and return the image to a just-created state.

The overload without parameters disposes of the [XReadOptions](../../xreadoptions/index.md) and of the Stream.

The overload with output parameters returns the [XReadOptions](../../xreadoptions/index.md) and the Stream. The returned objects have not been disposed of.
