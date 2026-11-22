# GetInt Function

Gets the integer value from the Atom if it is a NumAtom.

## Syntax

```csharp
static int GetInt(Atom atom)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the integer from. |
| return | The returned integer. |

## Notes

Get the integer value from the supplied Atom if it is a NumAtom.

If the atom is not a NumAtom or if it is null then zero will be returned.
