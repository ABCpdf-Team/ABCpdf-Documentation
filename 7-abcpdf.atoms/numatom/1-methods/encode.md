# Encode Function

Encode a number into a PDF string. This format may be needed for direct insertion into a content stream.

## Syntax

```csharp
static string Encode(double value)
```

## Params

| Name | Description |
| :---: | --- |
| value | The number to convert. |
| return | The string representation. |

## Notes

Encode a number into a PDF string. This format may be needed for direct insertion into a content stream.

PDF content streams accept certain formats of numbers. In many situations these are the same as the strings returned by .NET functions such as ToString. However in the case of floating point conversions, not all output formats are valid in a PDF content stream.

For example, very small or very large numbers can lead to the insertion of exponential format strings which are not an accepted PDF format and can lead to errors. Because numbers typically occur in a non exponential range these errors can be infrequent and difficult to track down.

This method will produce PDF valid strings for use in content streams and similar applications.
