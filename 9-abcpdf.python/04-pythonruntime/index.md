# PythonRuntime Class

A class for holding the GIL and for accessing the Python runtime for running Python code.

The runtime object holds the Python GIL. The Python GIL, or Global Interpreter Lock, is a rule inside the standard Python system that only lets one thread run Python code at a time, even if your computer has many cores. Think of it like a single token that a thread must hold to do its work; while one thread holds the token, others must wait.

This makes memory management simpler and safer for Python, but it also means that using multiple threads will not speed up heavy number-crunching tasks. However, for tasks that involve waiting, like reading files or fetching web pages, threads can still work well because they give up the token while waiting.

```
System.Object
   WebSupergoo.ABCpdf14.Python.PythonRuntime
```

```
Implements: IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| [CreateScope](1-methods/01-createscope.md) | Creates a scope for running Python code. |
| ⚠ [AutoInitializeRuntime](1-methods/02-autoinitializeruntime.md) | Initializes the Python runtime, including redirecting sys.stdout and sys.stderr and setting up the virtual environment. |

## Properties

| Property | Description |
| --- | --- |
| [Env](2-properties/01-env.md) | The Python environment. |
| [StdOutCallback](2-properties/02-stdoutcallback.md) | Gets or sets the delegate to receive text written to std out. |
| [StdErrCallback](2-properties/03-stderrcallback.md) | Gets or sets the delegate to receive text written to std err. |
| [StdOut](2-properties/04-stdout.md) | Gets or sets the StringBuilder for storing text written to std out. |
| [StdErr](2-properties/05-stderr.md) | Gets or sets the StringBuilder for storing text written to std err. |
| [StdOutWriter](2-properties/06-stdoutwriter.md) | Gets or sets the TextWriter for receiving text written to std out. |
| [StdErrWriter](2-properties/07-stderrwriter.md) | Gets or sets the TextWriter for receiving text written to std err. |
