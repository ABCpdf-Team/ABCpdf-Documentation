# SetUp Function

Sets up the Python environment.

## Syntax

[C#]

```csharp
bool SetUp(string pythonDLL)
```

## Params

| **Name** | **Description** |
| --- | --- |
| pythonDLL | The file path to the Python DLL/shared library. |
| return | Whether the environment is newly set up. It returns false if the environment has already been set up. |

## Notes

Sets up the Python environment.

This initializes the delegates/function pointers for calling the Python engine.
