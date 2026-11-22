# GetDouble Function

Gets the double value from the Atom if it is a NumAtom.

## Syntax

```csharp
static double GetDouble(Atom atom)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the double from. |
| return | The returned double. |

## Notes

Get the double value from the supplied Atom if it is a NumAtom.

If the atom is not a NumAtom or if it is null then zero will be returned.
