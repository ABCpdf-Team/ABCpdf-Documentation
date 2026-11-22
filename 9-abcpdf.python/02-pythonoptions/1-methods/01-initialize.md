# Initialize Function

Initializes the Python engine.

## Syntax

*C#*

`bool Initialize(`[`PythonEnvironment`](../../01-pythonenvironment/index.md)` env, string pythonDLL)`

## Params

| Name | Description |
| :---: | --- |
| env | The Python environment. |
| pythonDLL | The file path to the Python DLL/shared library for setting up the Python environment. Pass null for auto-detection. |
| return | Whether the engine is newly set up. It returns false if the engine has already been set up. |

## Notes

Initializes the Python engine and sets up the Python environment.

This function does nothing if the Python environment has already been set up.

For the python DLL you would typically pass null to auto-locate the library. However if you want to specify the location yourself you might use values such as:

- @"C:\\Program Files\\Python\\Python313\\python313.dll"
- "/usr/lib/x86_64-linux-gnu/libpython3.10.so.1"

## Example

None.

Also see example code in: [AccessibilityOperationAI Tag Function](../../../8-abcpdf.operations/c-accessibilityoperationai/1-methods/01-tag.md), [AccessibilityOperationAI ConversionOptions Property](../../../8-abcpdf.operations/c-accessibilityoperationai/2-properties/01-conversionoptions.md), [PythonEngine Version Property](../../03-pythonengine/2-properties/01-version.md), [PythonRuntime AutoInitializeRuntime Function](../../04-pythonruntime/1-methods/02-autoinitializeruntime.md), [PythonScope SetAfterEval Function](../../06-pythonscope/1-methods/10-setaftereval.md), [PythonScope EvalString Function](../../06-pythonscope/1-methods/11-evalstring.md), [PythonScope Exec Function](../../06-pythonscope/1-methods/18-exec.md), [PythonRuntimeOptions InitializeRuntime Function](../../07-pythonruntimeoptions/1-methods/02-initializeruntime.md).
