# VEnvPath Property

## Notes

Gets or sets the directory path for a Python virtual environment.

It is ignored if PythonEnvironment.RuntimeIsInitialized is not Uninitialized.

Only the first initialization of the runtime should have this property as a non-empty path because this causes the initialization script to set site.PREFIXES and to call site.main.
