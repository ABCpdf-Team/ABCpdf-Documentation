# GetPipe Function

Gets a color conversion Pipe which may be used to map colors from one color space to another.

## Syntax

```csharp
RecolorOperation.Pipe GetPipe(Page page, Atom source)
```

## Params

| Name | Description |
| :---: | --- |
| page | The page for which the pipe is needed. |
| source | The source color space atom. |
| returns | A Pipe which can be used for converting colors. |

## Notes

Gets a color conversion Pipe which may be used to map colors from one color space to another.

The Pipe maps from the provided color space source in the context of the provided page, to the [DestinationColorSpace](../2-properties/destinationcolorspace.md) and [RenderingIntent](../2-properties/renderingintent.md) of the RecolorOperation.

Pipes are owned by the RecolorOperation which means that repeated Pipe requests will use cached Pipes rather than recreating the same conversion repeatedly.

While this greatly increases the efficiency of conversion, it does also mean that at the point at which the RecolorOperation is disposed of, all owned Pipes will also be disposed of. So if you attempt to use a Pipe after your RecolorOperation has been disposed of, an exception will be raised.
