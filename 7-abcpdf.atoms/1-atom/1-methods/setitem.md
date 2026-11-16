# SetItem Function

Adds a specified item to the Atom if it is of a type which 
            contains other Atoms.

## Syntax

[C#]

```csharp
static Atom SetItem(Atom atom, string key, Atom val)static Atom SetItem(Atom atom, int index, Atom val)
```

## Params

| **Name** | **Description** |
| --- | --- |
| atom | The Atom to which the item should be added. |
| key | The name of the item to be added. |
| index | The index at which the item should be added. |
| val | The item to be added. |
| return | The returned Atom. |

## Notes

Both [DictAtoms](dictatom/default.md) and [ArrayAtoms](arrayatom/default.md) can contain other Atoms.

This function allows you to add an item to an ArrayAtom or DictAtom.

If the container Atom supplied is not a DictAtom or an ArrayAtom then insertion will not be successful.

Entries in ArrayAtoms can be referenced by number. If the container Atom supplied is an ArrayAtom and the index supplied is within the bounds of the array then insertion will be successful. If the index supplied is less than zero then the value Atom will be added to the end of the array. Again insertion will be successful.

Entries in DictAtoms can be referenced by name. If the container Atom supplied is a DictAtom and the key supplied is not empty then insertion will be successful.

If insertion was successful the function will return the Atom which was added. If it was not successful it will return null.

## Example

None
