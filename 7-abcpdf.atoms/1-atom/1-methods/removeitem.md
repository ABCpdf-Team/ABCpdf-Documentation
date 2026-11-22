# RemoveItem Function

Removes the named entry from the Atom if it is a DictAtom.

## Syntax

```csharp
static void RemoveItem(Atom atom, string key)
```

## Params

| Name | Description |
| :---: | --- |
| atom | The Atom from which the item should be removed. |
| key | The name of the item to be removed. |

## Notes

[DictAtoms](../../dictatom/index.md) can contain other Atoms referenced by name.

This function allows you to remove a named item from a DictAtom.

If the atom supplied is not a DictAtom then calling this function will have no effect.

## Example

Also see example code in: [XTagging AddFocus Function](../../../5-abcpdf/xtagging/1-methods/08-addfocus.md).
