# GetBool Function

Gets the Boolean value from the Atom if it is a BoolAtom.

## Syntax

```csharp
static bool GetBool(Atom atom)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the Boolean from. |
| return | The returned Boolean. |

## Notes

Get the Boolean value from the supplied Atom if it is a BoolAtom.

If the atom is not a BoolAtom or if it is null then false will be returned.
