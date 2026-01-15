# Clear Function

Clears the image.

## Syntax

```csharp
void Clear()
void Clear(out <a href="../../xreadoptions/default.htm">XReadOptions</a> outOptions, out Stream outStream)
```

## Params

| Name | Description |
| --- | --- |
| outOptions | The XReadOptions used to create the object. |
| outStream | The Stream used to create the object if NeedsStream is true. |

## Notes

Use this method to release resources and return the image to a just-created state.

The overload without parameters disposes of the XReadOptions and of the Stream.

The overload with output parameters returns the XReadOptions and the Stream. The returned objects have not been disposed of.

