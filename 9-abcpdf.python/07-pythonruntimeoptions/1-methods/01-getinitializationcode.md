# GetInitializationCode Function

Gets the initialization code.

## Syntax

[C#]

```csharp
string GetInitializationCode(<a href="../../01-pythonenvironment/default.htm">PythonEnvironment</a> env, bool updateNames = false, bool alwaysUseProvidedNames = false, StringBuilder code = null)
```

## Params

| **Name** | **Description** |
| --- | --- |
| env | The Python environment. |
| updateNames | Specifies whether the actual, corresponding values used in the code are assigned back to VarVEnvPath, VarStdOutCallback, VarStdErrCallback and ConsoleClassName. |
| alwaysUseProvidedNames | Specifies that an ArgumentException is thrown when provided variable/class names are identical where distinct values are required. If the value is false, some of the names in the name conflict will be set to a default distinct value. |
| code | A StringBuilder object to receive the initialization code. The value is appended to it. The method will return a null value if this parameter is not null. |
| return | The initialization code if code is null and initialization is needed. Otherwise, null. |

## Notes
