# SetAfterEval Function

Evaluates a Python expression and assigns its value to a variable.

## Syntax

*C#*

`void SetAfterEval(string name, string expr, `[`PythonScope`](../index.md)` evalScope = null, in `[`PythonRunOptions`](../../05-pythonrunoptions/index.md)` options = new())`

⚠ `ObjectDisposedException: Thrown when this PythonScope has been disposed of.`  
⚠ `ArgumentNullException: Thrown when name is null.`  
⚠ `ArgumentException: Thrown when name is not a valid Python identifier.`

## Params

| Name | Description |
| :---: | --- |
| name | The name of the variable. |
| expr | A Python expression. |
| evalScope | A scope where expr is evaluated. The current [PythonScope](../index.md) is used if it is null. |
| options | Options for running Python code. |

## Notes

Evaluates a Python expression and assigns its value to a variable. By providing a different scope in evalScope, you can evaluate the expression in a scope that is different from the scope where the variable is set.

## Example

You can re-use a complex object using code of the following form.

```csharp
var options = new PythonOptions();
options.Initialize(PythonEnvironment.Current, null);
using var rt = PythonEnvironment.Current.GetRuntime();
using var scope = rt.CreateScope();
rt.StdOutWriter = Console.Out;
rt.StdErrWriter = Console.Error;
rt.AutoInitializeRuntime(scope);
scope.Exec(
  "from docling.datamodel.accelerator_options import AcceleratorDevice, AcceleratorOptions\n" +
  "from docling.datamodel.base_models import InputFormat\n" +
  "from docling.datamodel.pipeline_options import ThreadedPdfPipelineOptions\n" +
  "from docling.document_converter import PdfFormatOption\n"
);
scope.SetAfterEval("myFormatOptions", "{InputFormat.PDF: PdfFormatOption(pipeline_options=ThreadedPdfPipelineOptions(do_ocr=False, accelerator_options=AcceleratorOptions(device=AcceleratorDevice.CPU)))}");
var op = new AccessibilityOperationAI();
op.ConversionOptions = "myFormatOptions";
// ... do work
```
