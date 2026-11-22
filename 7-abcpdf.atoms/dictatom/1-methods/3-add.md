# Add Function

Add an item to the dictionary.

## Syntax

*C#*

`void Add(string key, `[`Atom`](../../1-atom/index.md)` value)`  
`void Add(string key, int value)`  
`void Add(string key, double value)`  
`void Add(string key, string value)`

⚠ `may throw ArgumentException()`  
⚠ `may throw ArgumentNullException()`

## Params

| Name | Description |
| :---: | --- |
| key | The string to use as the key of the element to add. |
| value | The value to be added - an Atom, an integer, a floating point value or a string. |

## Notes

This method adds an item to the dictionary.

You can add an Atom directly into the dictionary or you can use one of the overloaded operators to add numbers or strings.

When you add a string this is encapsulated within a [StringAtom](../../stringatom/index.md) and then inserted. When you add an integer or floating point value this is converted to a [NumAtom](../../numatom/index.md) and then inserted. These operations are more efficient than creating an Atom and adding it yourself.

Atoms can exist in only one place at a time. If the Atom supplied is already contained by another object then a [Clone](../../1-atom/1-methods/1-clone.md) of the Atom is added.

Adding a null value will result in a [NullAtom](../../nullatom/index.md) being added to the dictionary.

If the key is null then this method will throw an ArgumentNullException. If the key is already present in the dictionary then this method will throw an ArgumentException.
