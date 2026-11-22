# AutoInitializeRuntime Function

Initializes the Python runtime, including redirecting sys.stdout and sys.stderr and setting up the virtual environment.

## Syntax

*C#*

`bool AutoInitializeRuntime(`[`PythonScope`](../../06-pythonscope/index.md)` scope, string venvPath = null)`

⚠ `ArgumentNullException: Thrown when scope is null.`  
⚠ `ArgumentException: Thrown when the environment of scope is different from the Python environment of this `[`PythonRuntime`](../index.md)`.`  
⚠ `ObjectDisposedException: Thrown when this `[`PythonRuntime`](../index.md)` has been disposed of.`

## Params

| Name | Description |
| :---: | --- |
| scope | The Python scope for running initialization code. |
| venvPath | The directory path for a Python virtual environment if not null/empty. It is ignored if [PythonEnvironment.RuntimeIsInitialized](../../01-pythonenvironment/2-properties/06-runtimeisinitialized.md) is not Uninitialized. It should be null/empty for all calls except (possibly) for the first call. Please see [PythonRuntimeOptions.VEnvPath](../../07-pythonruntimeoptions/2-properties/01-venvpath.md) for details. |
| return | Whether initialization is performed. Initialization is performed if [PythonEnvironment.RuntimeIsInitialized](../../01-pythonenvironment/2-properties/06-runtimeisinitialized.md) is Uninitialized or AutoInitialized. |

## Notes

Initializes the Python runtime, including redirecting sys.stdout and sys.stderr and setting up the virtual environment.

If initialization is performed, [PythonEnvironment.RuntimeIsInitialized](../../01-pythonenvironment/2-properties/06-runtimeisinitialized.md) is set to AutoInitialized.

## Example

To use a virtual environment, you need to initialize the Python engine with [PythonOptions.SetNoSiteFlag](../../02-pythonoptions/2-properties/01-setnositeflag.md) true and to provide the path to the directory of the virtual environment. This example shows how you might do this.

```csharp
string venvPath = @"C:\MyVenv";
var env = PythonEnvironment.Current;
var options = new PythonOptions { SetNoSiteFlag = !string.IsNullOrEmpty(venvPath) };
options.Initialize(env, null);
using var rt = env.GetRuntime();
using var scope = rt.CreateScope();
rt.StdOutWriter = Console.Out;
rt.StdErrWriter = Console.Error;
rt.AutoInitializeRuntime(scope, venvPath);
// ... do work
```
