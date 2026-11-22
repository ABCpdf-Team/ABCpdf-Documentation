# GetText Function

Gets the Text value from the Atom if it is a StringAtom.

## Syntax

```csharp
static string GetText(Atom atom)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the text from. |
| return | The returned text. |

## Notes

Get the Text value from the supplied Atom if it is a StringAtom.

If the atom is not a StringAtom or if it is null then an empty string ("") will be returned.
