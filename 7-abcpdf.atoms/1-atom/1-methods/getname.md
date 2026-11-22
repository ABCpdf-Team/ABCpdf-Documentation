# GetName Function

Gets the Name value from the Atom if it is a NameAtom.

## Syntax

```csharp
static string GetName(Atom atom)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the name from. |
| return | The returned name. |

## Notes

Get the Name value from the supplied Atom if it is a NameAtom.

If the atom is not a NameAtom or if it is null then an empty string ("") will be returned.
