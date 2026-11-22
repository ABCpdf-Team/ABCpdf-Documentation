# GetValueInt Method

Gets the Int32 value of this value converted to number using the standard JavaScript conversion.

## Syntax

```csharp
int GetValueInt()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The Int32 value of the converted value. |

## Notes

The method is the chain of [ToJSNumber](tojsnumber.md) and [GetNumberInt](getnumberint.md) without intermediate object creation.
