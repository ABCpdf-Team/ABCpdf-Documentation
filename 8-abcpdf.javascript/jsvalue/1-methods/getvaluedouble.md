# GetValueDouble Method

Gets the Double value of this value converted to number using the standard JavaScript conversion.

## Syntax

```csharp
double GetValueDouble()
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| return | The Double value of the converted value. |

## Notes

The method is the chain of [ToJSNumber](tojsnumber.md) and [GetNumberDouble](getnumberdouble.md) without intermediate object creation.
