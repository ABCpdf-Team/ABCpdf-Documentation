# PythonRuntimeOptions Class

Options for initializing the Python runtime.

```
System.Object
   WebSupergoo.ABCpdf14.Python.PythonRuntimeOptions
```

```
Implements: ICloneable
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [GetInitializationCode](1-methods/01-getinitializationcode.md) | Gets the initialization code. |
| ⚠ [InitializeRuntime](1-methods/02-initializeruntime.md) | Initializes the Python runtime. |

## Properties

| Property | Description |
| --- | --- |
| [VEnvPath](2-properties/01-venvpath.md) | Gets or sets the directory path for a Python virtual environment. |
| [StdOutCallback](2-properties/02-stdoutcallback.md) | Gets or sets the delegate to be invoked when sys.stdout.write is called. |
| [StdErrCallback](2-properties/03-stderrcallback.md) | Gets or sets the delegate to be invoked when sys.stderr.write is called. |
| [VarVEnvPath](2-properties/04-varvenvpath.md) | Gets or sets the variable name for VEnvPath in the initialization code. |
| [VarStdOutCallback](2-properties/05-varstdoutcallback.md) | Gets or sets the variable name for StdOutCallback in the initialization code. |
| [VarStdErrCallback](2-properties/06-varstderrcallback.md) | Gets or sets the variable name for StdErrCallback in the initialization code. |
| [ConsoleClassName](2-properties/07-consoleclassname.md) | Gets or sets the class name of the object assigned to sys.stdout and sys.stderr in the initialization code. |
