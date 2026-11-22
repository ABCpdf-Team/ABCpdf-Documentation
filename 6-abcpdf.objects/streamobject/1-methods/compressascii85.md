# CompressAscii85 Function

Compress the data in the stream using ASCII 85 encoding.

## Syntax

```csharp
bool CompressAscii85()
bool CompressAscii85(bool force)
```

## Params

| Name | Description |
| :---: | --- |
| force | Whether to force the stream to be compressed in this way. |
| return | Whether the compression was applied. |

## Notes

Compress the data in the stream using ASCII 85 encoding.

ASCII 85 replaces each five bytes of data with a four character ASCII notation. As such it is not strictly a compression method and it will result in the data size increasing by about twenty percent. However the resultant data will be ASCII, which can be useful if you need to treat the PDF data as text.

PDF streams allow a set of compression filters to be applied to a stream of data. For example one might want to apply Flate compression and then ASCII85 encode the result. This is represented as two compression filters in sequence.

This function does not decompress the stream. So if compression is already present, then this method will compress the already-encoded data and append a compression specification to the sequence.

ABCpdf tries to avoid creating certain compression sequences. Some compression types on some objects are illegal. Some sequences are legal but not supported within Acrobat (though they are in most other viewers). However these are unusual situations and you are unlikely to ever see them.

You can override this behavior by forcing the compression to take place. However if you do this you may end up creating a document which is invalid or unviewable in Acrobat.
