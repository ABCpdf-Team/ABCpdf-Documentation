# Add Function

Add an item to the end of the array.

## Syntax

*C#*

`int Add(`[`Atom`](../../1-atom/index.md)` value)`  
`int Add(int value)`  
`int Add(double value)`  
`int Add(string value)`

## Params

| Name | Description |
| :---: | --- |
| value | The value to be added - an Atom, an integer, a floating point value or a string. |
| return | The position in which the new element was inserted. |

## Notes

This method adds an item to the array.

You can add an Atom directly into the array or you can use one of the overloaded operators to add numbers or strings.

When you add a string this is encapsulated within a [StringAtom](../../stringatom/index.md) and then inserted. When you add an integer or floating point value this is converted to a [NumAtom](../../numatom/index.md) and then inserted. These operations are more efficient than creating an Atom and adding it yourself.

Atoms can exist in only one place at a time. If the Atom supplied is already contained by another object then a [Clone](../../1-atom/1-methods/1-clone.md) of the Atom is added.

Adding a null value will result in a [NullAtom](../../nullatom/index.md) being added to the array.
