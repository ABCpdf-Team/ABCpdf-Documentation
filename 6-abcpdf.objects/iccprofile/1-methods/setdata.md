# SetData Function

Set the raw binary content of the stream.

## Syntax

```csharp
override void SetData(byte[] value)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| value | The raw binary content of the stream. |

## Notes

Set the raw binary content of the stream.

This function overrides the [StreamObject.SetData](../../streamobject/1-methods/setdata.md) function.

If the StreamObject currently contains compressed data or if the content provided is not a valid ICC profile then an exception will be thrown.
