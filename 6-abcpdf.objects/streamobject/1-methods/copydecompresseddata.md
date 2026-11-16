# CopyDecompressedData Function

Copy the decompressed binary content of the stream into a byte array.

## Syntax

[C#]

```csharp
int CopyDecompressedData(byte[] destination = null, int startIndex = 0, int maxLength = int.MaxValue)
```

## Params

| **Name** | **Description** |
| --- | --- |
| destination | The destination byte array. |
| startIndex | The index in the byte array at which the first byte should be written. |
| maxLength | The maximum number of bytes that should be written. |
| return | The length of the decompressed data that has been written to the array. If the destination is null then this returns the length that would have been written if a destination had been provided. |

## Notes

Copy the decompressed binary content of the stream into a byte array.

This method does not alter the content of the StreamObject so it is an efficient way of getting the decompressed data without altering the document.

If the data could not be decompressed then an exception will be raised.

The decompressed data is cached so that multiple calls to this function are efficient. For this reason calling this value with a null destination is an efficient way of determining the length of the decompressed stream.

## Example

None
