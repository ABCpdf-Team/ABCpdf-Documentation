# Parameters Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<string, `[`EffectParameter`](../../e-effectparameter/index.md)`>` | n/a | Yes | The parameters associated with the effect |

## Notes

The parameters associated with the effect.

Each item in the dictionary is identified by a name and takes a Parameter. So for a brightness effect there might be an intensity entry with a Parameter containing the value 25.

This property is read only, but the dictionary it returns can be modified.
