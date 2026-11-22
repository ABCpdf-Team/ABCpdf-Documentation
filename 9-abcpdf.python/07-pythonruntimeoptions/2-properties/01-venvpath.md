# VEnvPath Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | null | No | Gets or sets the directory path for a Python virtual environment. |

## Notes

Gets or sets the directory path for a Python virtual environment.

It is ignored if [PythonEnvironment.RuntimeIsInitialized](../../01-pythonenvironment/2-properties/06-runtimeisinitialized.md) is not Uninitialized.

Only the first initialization of the runtime should have this property as a non-empty path because this causes the initialization script to set site.PREFIXES and to call site.main.
