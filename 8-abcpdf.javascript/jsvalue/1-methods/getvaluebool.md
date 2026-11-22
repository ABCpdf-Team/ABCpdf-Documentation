# GetValueBool Method

Gets the Boolean value of this value converted to Boolean value using the standard JavaScript conversion.

## Syntax

```csharp
bool GetValueBool()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The Boolean value of the converted value. |

## Notes

The method is the chain of [ToJSBoolean](tojsboolean.md) and [GetBooleanBool](getbooleanbool.md) without intermediate object creation.
