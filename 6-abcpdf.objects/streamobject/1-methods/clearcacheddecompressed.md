# ClearCachedDecompressed Function

Clear the cached, decompressed data for the stream.

## Syntax

```csharp
void ClearCachedDecompressed()
```

## Params

| Name | Description |
| :---: | --- |
| none |  |

## Notes

The uncompressed data are retrieved from compressed streams during most operations, but the streams are still compressed. The uncompressed data are sometimes cached so that later operations (including the actual decompression of the streams) need not invoke the decompression algorithm.

This increases the memory usage, and it is not desirable if the document is to be kept in memory for an extended period of time.

This method discards the cached, decompressed data so that a re-read of the document is not required to release the memory.

You can apply the effect to multiple stream objects using [Doc.ClearCachedDecompressedStreams](../../../5-abcpdf/doc/1-methods/clearcacheddecompressedstreams.md).
