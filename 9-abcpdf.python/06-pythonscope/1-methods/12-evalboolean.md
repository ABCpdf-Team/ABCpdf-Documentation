# EvalBoolean Function

Evaluates a Python expression and gets its Boolean value.

## Syntax

*C#*

`bool EvalBoolean(string expr, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when expr is null.`  
⚠ `InvalidCastException: Thrown when the result is not a Boolean.`

## Params

| Name | Description |
| :---: | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The Boolean value of the result. |

## Notes

Evaluates a Python expression and gets its Boolean value.
