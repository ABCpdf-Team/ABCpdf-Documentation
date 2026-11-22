# EvalString Function

Evaluates a Python expression and gets its string value.

## Syntax

*C#*

`string EvalString(string expr, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when expr is null.`  
⚠ `InvalidCastException: Thrown when the result is neither a string nor None.`

## Params

| Name | Description |
| :---: | --- |
| expr | A Python expression. |
| options | Options for running Python code. |
| return | The string value of the result, or null if the result is None. |

## Notes

Evaluates a Python expression and gets its string value.

## Example

For example to get the version of Docling you might use code of the following form.

```csharp
var options = new PythonOptions();
options.Initialize(PythonEnvironment.Current, null);
using var rt = PythonEnvironment.Current.GetRuntime();
using var scope = rt.CreateScope();
rt.StdOutWriter = Console.Out;
rt.StdErrWriter = Console.Error;
rt.AutoInitializeRuntime(scope);
var result = scope.EvalString("__import__('importlib.metadata', fromlist=['metadata']).version('docling')\n");
Console.WriteLine(result);
```
