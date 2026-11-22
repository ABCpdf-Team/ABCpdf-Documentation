# Remove Function

Removes the variable from the module.

## Syntax

```csharp
void Remove(string name)
```

*C#*

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the variable. |

## Notes

Removes the variable from the module.

An exception is thrown if the variable does not exist.
