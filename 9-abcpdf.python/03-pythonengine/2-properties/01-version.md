# Version Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | n/a | Yes | Gets the version of the Python engine. |

## Notes

Gets the version of the Python engine.

## Example

The following code reports the engine version.

```csharp
var env = PythonEnvironment.Current;
var options = new PythonOptions();
options.Initialize(env, null);
var engine = new PythonEngine(env);
Console.WriteLine(engine.Version);
```
