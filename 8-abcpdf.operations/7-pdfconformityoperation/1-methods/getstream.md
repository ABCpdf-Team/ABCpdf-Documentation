# GetStream Function

Get the conforming document as raw data stream.

## Syntax

```csharp
Stream GetStream(Doc doc)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| doc | The document. |
| return | The PDF document as a stream. |

## Notes

The method writes the document in a conforming PDF format according to the [Conformance](../2-properties/conformance.md) property. Any conformance error is reported in the [Errors](../2-properties/errors.md) property after the method finishes.

Because of the CLR limit of 2 GB per object, the [GetData](getdata.md) method cannot return the data for a document larger than 2 GB. Use this method for documents larger than 2 GB. Dispose of the returned stream as soon as it is no longer needed for small memory footprint.
