# UpdateMetadata Function

Update metadata for the embedded file.

## Syntax

```csharp
void UpdateMetadata(string path)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | A path to a file containing data. If null is passed the data will be cleared. |

## Notes

Update metadata like the [ModificationDate](../2-properties/modificationdate.md), [CreationDate](../2-properties/creationdate.md) and [Size](../2-properties/size.md) to reflect the file values.

This EmbeddedFile must be part of an ObjectSoup or an exception will be thrown.
