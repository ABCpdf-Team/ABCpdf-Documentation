# SetValue Function

Sets the variable to a value.

## Syntax

```csharp
void SetValue(string name, string value)
void SetValue(string name, bool value)
void SetValue(string name, int value)
void SetValue(string name, long value)
void SetValue(string name, ulong value)
void SetValue(string name, double value)
```

*C#*

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the variable. |
| value | The value of the variable. If it is null, None is used. |

## Notes

Sets the variable to a value. If the value is null, None is used.
