# GetData Function

Get the conforming document as raw data.

## Syntax

```csharp
byte[] GetData(Doc doc)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| doc | The document. |
| return | The PDF document as an array of bytes. |

## Notes

The method writes the document in a conforming PDF format according to the [Conformance](../2-properties/conformance.md) property. Any conformance error is reported in the [Errors](../2-properties/errors.md) property after the method finishes.
