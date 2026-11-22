# GetItem Function

Gets the specified item from the Atom if it is of a type which contains other Atoms.

## Syntax

```csharp
static Atom GetItem(Atom atom, string key)
static Atom GetItem(Atom atom, int index)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom to get the item from. |
| key | The name of the item to be retrieved. |
| index | The index of the item to be retrieved. |
| return | The returned Atom. |

## Notes

Both [DictAtoms](../../dictatom/index.md) and [ArrayAtoms](../../arrayatom/index.md) can contain other Atoms.

This function allows you to get an item from an ArrayAtom or DictAtom.

Entries in ArrayAtoms can be referenced by number. If the supplied atom is not an ArrayAtom or if it is null or if the index is outside the bounds of the array then null will be returned.

Entries in DictAtoms can be referenced by name or by number. If the supplied atom is not a DictAtom or if it is null or if the name is not a key in the dictionary or if the index is outside the bounds of the dictionary then null will be returned.
