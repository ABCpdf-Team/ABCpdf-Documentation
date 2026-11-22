# Decompress Function

Decompress the data in the stream.

## Syntax

```csharp
bool Decompress()
```

## Params

| Name | Description |
| :---: | --- |
| return | Whether the data in the stream is uncompressed. |

## Notes

This method removes all compression from the stream.

Under some circumstances it may not be possible to fully decompress the stream. In these situations the function will return false.

In occasional and unusual situations, decompression may change the document to a greater extent than one might expect. For example if a [PixMap](../../pixmap/index.md) is JPEG 2000 compressed it may contain interleaved transparency. Because interleaved transparency is only permitted in JPEG 2000 images, at the point of decompression the alpha needs to be separated off into a separate [PixMap.SMask](../../pixmap/2-properties/smask.md) entry. However this type of situation is uncommon and normally the effects of decompression are limited to the object being decompressed.
