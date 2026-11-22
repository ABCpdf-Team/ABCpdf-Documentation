# SetFile Function

Set the raw binary content of the stream using data from a file.

## Syntax

```csharp
void SetFile(string path)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | A path to a file containing data which should be placed in the StreamObject. |

## Notes

Set the raw binary content of the stream using data read from a file. If the file cannot be read then an exception is thrown.

Compression settings are unaltered. So if - for example - you have a stream which is Flate compressed you must use SetFile with Flate compressed data.

For this reason you may wish to call [ClearData](cleardata.md) before using SetFile.
