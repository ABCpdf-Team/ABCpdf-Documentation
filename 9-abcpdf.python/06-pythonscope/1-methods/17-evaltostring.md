# EvalToString Function

Evaluates a Python expression and converts its value to string.

## Syntax

[C#]

```csharp
string EvalToString(string expr, in <a href="../../05-pythonrunoptions/default.htm">PythonRunOptions</a> options = new())
```

## Params

| **Name** | **Description** |
| --- | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The string converted from the result if the result is not None, or null if the result or the conversion result is None. |

## Notes
