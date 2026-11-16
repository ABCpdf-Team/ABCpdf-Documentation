# SetData Function

Set the raw binary content of the stream.

## Syntax

[C#]

```csharp
void SetData(byte[] value)void SetData(byte[] buffer, int index, int count)void SetData(StreamObject value)void SetData(byte[] buffer, bool clearFirst)void SetData(byte[] buffer, int index, int count, bool clearFirst)
```

## Params

| **Name** | **Description** |
| --- | --- |
| value | The raw binary content to be assigned to the stream, or the StreamObject from which to copy the data. |
| buffer | The byte array to be copied to the stream. |
| index | The index in the array at which copying should start. |
| count | The number of bytes to copy. |
| clearFirst | Whether to clear any compression settings before assigning the data bytes. |

## Notes

Set the raw binary content of the stream.

Compression settings are unaltered. So if - for example - you have a stream which is Flate compressed you must use SetData with Flate compressed data.

For this reason you may wish to call [ClearData](cleardata.md) before using SetData.

Using the overload which accepts a StreamObject is equivalent to, but more efficient than, getting the data from the source StreamObject and then using SetData to assign it to this one.

## Example

Also see example code in: [OpAtom Find Function](7-abcpdf.atoms/opatom/1-methods/find.md).
