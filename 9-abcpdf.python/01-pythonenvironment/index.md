# PythonEnvironment Struct

The Python environment.

You can obtain the Python environment using [PythonEnvironment.Current](2-properties/01-current.md).

Members are thread-safe as long as this struct is not overwritten asynchronously.

```
System.ValueType
   WebSupergoo.ABCpdf14.Python.PythonEnvironment
```

```
Implements: IEquatable<PythonEnvironment>, IComparable<PythonEnvironment>
```

## Methods

| Method | Description |
| --- | --- |
| [SetUp](1-methods/01-setup.md) | Sets up the Python environment. |
| ⚠ [GetRuntime](1-methods/02-getruntime.md) | Gets a new runtime object for running Python code. |
| [Equals](1-methods/03-equals.md) | Indicates whether this Python environment is equal to the specified Python environment. |

## Properties

| Property | Description |
| --- | --- |
| Ⓢ [Current](2-properties/01-current.md) | Gets the environment for Python. |
| [Engine](2-properties/02-engine.md) | Gets the Python engine type. |
| [PythonDLL](2-properties/03-pythondll.md) | Gets the path to the Python DLL/shared library used to set up the Python environment. |
| [IsSetUp](2-properties/04-issetup.md) | Gets whether the Python environment is set up. |
| [IsInitialized](2-properties/05-isinitialized.md) | Gets the initialization state of the Python engine. |
| [RuntimeIsInitialized](2-properties/06-runtimeisinitialized.md) | Gets or sets the initialization state of the Python runtime. |
