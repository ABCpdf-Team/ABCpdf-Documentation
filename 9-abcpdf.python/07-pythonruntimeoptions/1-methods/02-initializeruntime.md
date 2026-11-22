# InitializeRuntime Function

Initializes the Python runtime.

## Syntax

*C#*

`bool InitializeRuntime(`[`PythonScope`](../../06-pythonscope/index.md)` scope, bool updateNames = false, bool alwaysUseProvidedNames = false)`

⚠ `ArgumentNullException: Thrown when scope is null.`  
⚠ `ArgumentException: Thrown when a provided variable/class name is not a valid identifier or when alwaysUseProvidedNames is true and there is a name conflict in the provided variable/class names.`

## Params

| Name | Description |
| :---: | --- |
| scope | The scope for running the initialization code. |
| updateNames | Specifies whether the actual, corresponding values used in the code are assigned back to [VarVEnvPath](../2-properties/04-varvenvpath.md), [VarStdOutCallback](../2-properties/05-varstdoutcallback.md), [VarStdErrCallback](../2-properties/06-varstderrcallback.md), and [ConsoleClassName](../2-properties/07-consoleclassname.md). |
| alwaysUseProvidedNames | Specifies that an ArgumentException is thrown when provided variable/class names are identical where distinct values are required. If the value is false, some of the names in the name conflict will be set to a default distinct value. |
| return | Whether initialization has been performed (i.e. is not no-op). |

## Notes

Initializes the Python runtime.

PythonEnvironment.RuntimeIsInitialized is set to UserInitialized on normal completion of this method call (when no exception is thrown), thus preventing PythonRuntime.AutoInitializeRuntime from performing initialization, and making this method ignore VEnvPath later.

The sys.stdout and sys.stderr are set to invoke StdOutCallback and StdErrCallback (if they are not null). The redirections will be iin effect even after PythonRuntime is disposed of.

In most use cases you will want to use PythonRuntime.AutoInitializeRuntime instead of this method as this will cause the redirected sys.stdout and sys.stderr to be restored or to do nothing after PythonRuntime is disposed of.

## Example

To disable ANSI color in stdout output on Linux you might use code of the following form.

```csharp
string venvPath = null;
var options = new PythonOptions { SetNoSiteFlag = !string.IsNullOrEmpty(venvPath) };
var env = PythonEnvironment.Current;
options.Initialize(env, null);
using var rt = PythonEnvironment.Current.GetRuntime();
using var scope = rt.CreateScope();
var rtOptions = new PythonRuntimeOptions() {
    VEnvPath = venvPath,
    StdOutCallback = Console.Out.Write,
    StdErrCallback = Console.Error.Write
};
rtOptions.InitializeRuntime(scope);
env.RuntimeIsInitialized = RuntimeInitializationState.UserInitialized;
// ... do work
```
