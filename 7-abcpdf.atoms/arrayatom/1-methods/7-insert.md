# Insert Function

## Syntax

[C#] void Insert(int index, Atom value)

may throw ArgumentOutOfRangeException()

## Params

## Notes

Inserts an Atom into the array at the specified position.

If the index equals the number of items in the array then the Atom is appended to the end.

Atoms can exist in only one place at a time. If the Atom supplied is already contained by another object then a Clone of the Atom is added.

Adding a null value will result in a NullAtom being added to the array.

If the index is not a valid index this method throws an ArgumentOutOfRangeException.

## Example

Also see example code in: CustomFont CustomFont Function.

