# GetUInt64Value Function

Gets the variable's integer value.

## Syntax

```csharp
ulong GetUInt64Value(string name)
```

*C#*

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`  
⚠ `InvalidCastException: Thrown when the value cannot be represented as a UInt64.`  
⚠ `OverflowException: Thrown when the value is outsde the range of a UInt64.`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the variable. |
| return | The integer value. |

## Notes

Gets the variable's integer value.
