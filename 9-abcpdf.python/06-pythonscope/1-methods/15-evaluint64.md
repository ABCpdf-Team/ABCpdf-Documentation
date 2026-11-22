# EvalUInt64 Function

Evaluates a Python expression and gets its integer value.

## Syntax

*C#*

`ulong EvalUInt64(string expr, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when expr is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`  
⚠ `InvalidCastException: Thrown when the result cannot be represented as a UInt64.`  
⚠ `OverflowException: Thrown when the result is outsde the range of a UInt64.`

## Params

| Name | Description |
| :---: | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The integer value of the result. |

## Notes

Evaluates a Python expression and gets its integer value.
