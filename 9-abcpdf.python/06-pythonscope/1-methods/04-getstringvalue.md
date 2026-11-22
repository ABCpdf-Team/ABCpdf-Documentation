# GetStringValue Function

Gets the variable's string value.

## Syntax

```csharp
string GetStringValue(string name)
```

*C#*

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`  
⚠ `InvalidCastException: Thrown when the value is neither a string nor None.`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the variable. |
| return | The string value, or null if the value is None. |

## Notes

Gets the variable's string value.
