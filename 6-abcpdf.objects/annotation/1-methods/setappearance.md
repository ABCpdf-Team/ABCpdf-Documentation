# SetAppearance Function

Set a particular appearance for the annotation.

## Syntax

```csharp
void SetAppearance(string state, string name, FormXObject form)
```

## Params

| Name | Description |
| :---: | --- |
| state | The state may be N, D, or R. These values represent the normal, down and rollover states respectively. |
| name | The name for the state for choice fields which have names. This value may be null if this is not a choice field. |
| form | The appearance. Pass null to remove the appearance. |
| return | The appearance. |

## Notes

Set a particular appearance for the annotation.
