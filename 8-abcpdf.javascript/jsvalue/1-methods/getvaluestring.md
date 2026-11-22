# GetValueString Method

Gets the String value of this value converted to string using the standard JavaScript conversion.

## Syntax

```csharp
string GetValueString()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The String value of the converted value. |

## Notes

The method is the chain of [ToJSString](tojsstring.md) and [GetString](getstring.md) without intermediate object creation.
