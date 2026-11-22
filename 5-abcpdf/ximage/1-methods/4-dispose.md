# Dispose Function

Dispose of the object.

## Syntax

*C#*

`void Dispose()`  
`void Dispose(out `[`XReadOptions`](../../xreadoptions/index.md)` outOptions, out Stream outStream)`

## Params

| Name | Description |
| :---: | --- |
| outOptions | The [XReadOptions](../../xreadoptions/index.md) used to create the object. |
| outStream | The Stream used to create the object if [NeedsStream](../2-properties/needsstream.md) is true. |

## Notes

You can call this function to explicitly dispose of an object and reduce the garbage collection overhead.

The overload without parameters disposes of the [XReadOptions](../../xreadoptions/index.md) and of the Stream.

The overload with output parameters returns the [XReadOptions](../../xreadoptions/index.md) and the Stream. The returned objects have not been disposed of.

Do not attempt to use an object after calling Dispose.
