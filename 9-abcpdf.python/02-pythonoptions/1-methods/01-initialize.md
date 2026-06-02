# Initialize Function

Initializes the Python engine.

## Syntax

[C#]

```csharp
bool Initialize(<a href="../../01-pythonenvironment/default.htm">PythonEnvironment</a> env, string pythonDLL)
```

## Params

| **Name** | **Description** |
| --- | --- |
| env | The Python environment. |
| pythonDLL | The file path to the Python DLL/shared library for setting up the Python environment. Pass null for auto-detection. |
| return | Whether the engine is newly set up. It returns false if the engine has already been set up. |

## Notes

Initializes the Python engine and sets up the Python environment.

This function does nothing if the Python environment has already been set up.

For the python DLL you would typically pass null to auto-locate the library. However if you want to specify the location yourself you might use values such as:

* @"C:\Program Files\Python\Python313\python313.dll"
* "/usr/lib/x86_64-linux-gnu/libpython3.10.so.1"
