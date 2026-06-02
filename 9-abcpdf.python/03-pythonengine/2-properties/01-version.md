# Version Property

## Notes

Gets the version of the Python engine.

## Example

The following code reports the engine version.

[C#] var env = PythonEnvironment.Current; var options = new PythonOptions(); options.Initialize(env, null); var engine = new PythonEngine(env); Console.WriteLine(engine.Version);

