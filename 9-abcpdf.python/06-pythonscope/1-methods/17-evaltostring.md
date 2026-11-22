# EvalToString Function

Evaluates a Python expression and converts its value to string.

## Syntax

*C#*

`string EvalToString(string expr, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`  
⚠ `InvalidCastException: Thrown when the result is neither a string nor None.`

## Params

| Name | Description |
| :---: | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The string converted from the result if the result is not None, or null if the result or the conversion result is None. |

## Notes

Evaluates a Python expression and converts its value to string.
