# ClearCachedDecompressedStreams Function

Clears the cached, decompressed data for stream objects.

## Syntax

```csharp
void ClearCachedDecompressedStreams()
void ClearCachedDecompressedStreams(StreamObjectTypes types)
```

## Params

| Name | Description |
| --- | --- |
| types | The types of stream objects whose cached, decompressed data are discarded. The default value is All. |

## Notes

Use this method to discards the cached, decompressed data for multiple stream objects.

The StreamObjectTypes enumeration may take a combination of the following values:

None – no stream object. All – all stream objects. Others – stream objects not of the below types. PixMap FormXObject – Form XObject. TilingPattern – tiling pattern object. StreamShadingObject – shading objects that are streams. StreamFunction – function objects that are streams.

You can apply the effect to a single stream object using StreamObject.ClearCachedDecompressed.

