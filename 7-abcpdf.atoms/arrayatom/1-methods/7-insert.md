# Insert Function

Inserts an Atom into the array at the specified position.

## Syntax

*C#*

`void Insert(int index, `[`Atom`](../../1-atom/index.md)` value)`

⚠ `may throw ArgumentOutOfRangeException()`

## Params

| Name | Description |
| :---: | --- |
| index | The zero-based index at which value should be inserted. |
| value | The Atom to insert into the array. |

## Notes

Inserts an Atom into the array at the specified position.

If the index equals the number of items in the array then the Atom is appended to the end.

Atoms can exist in only one place at a time. If the Atom supplied is already contained by another object then a [Clone](../../1-atom/1-methods/1-clone.md) of the Atom is added.

Adding a null value will result in a [NullAtom](../../nullatom/index.md) being added to the array.

If the index is not a valid index this method throws an ArgumentOutOfRangeException.

## Example

Also see example code in: [CustomFont CustomFont Function](../../../8-abcpdf.operations/r-customfont/1-methods/01-customfont.md).
