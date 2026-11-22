# EvalDouble Function

Evaluates a Python expression and gets its floating-point value.

## Syntax

*C#*

`double EvalDouble(string expr, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when expr is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`  
⚠ `InvalidCastException: Thrown when the result cannot be represented in floating point.`

## Params

| Name | Description |
| :---: | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The floating-point value of the result. |

## Notes

Evaluates a Python expression and gets its floating-point value.
