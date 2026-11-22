# Exec Function

Execute Python code.

## Syntax

*C#*

`void Exec(string code, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when code is null.`

## Params

| Name | Description |
| :---: | --- |
| code | Python code to be executed. |
| options | Options for running Python code. |

## Notes

Execute Python code.

## Example

To disable ANSI color in stdout output on Linux you might use code of the following form.

```csharp
var options = new PythonOptions();
options.Initialize(PythonEnvironment.Current, null);
using var rt = PythonEnvironment.Current.GetRuntime();
using var scope = rt.CreateScope();
rt.StdOutWriter = Console.Out;
rt.StdErrWriter = Console.Error;
rt.AutoInitializeRuntime(scope);
scope.Exec("import os\nos.environ['NO_COLOR'] = '1'\n");
// ... do work
```
