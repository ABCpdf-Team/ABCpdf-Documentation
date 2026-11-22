# GetParameters Function

Gets the parameters associated with the OpAtom at the specified index and validates that the atoms are of the correct type

## Syntax

*C#*

`static `[`Atom`](../../1-atom/index.md)`[] GetParameters(`[`ArrayAtom`](../../arrayatom/index.md)` array, int index)`

## Params

| Name | Description |
| :---: | --- |
| array | The array in which the OpAtom is found. |
| index | The index to the OpAtom. |
| return | The parameters. |

## Notes

Gets the parameters associated with the OpAtom at the specified index and validates that the atoms are of the correct type.

Because the arguments are validated and the types are checked so you can rely on the fact that the returned array contains a valid number of Atoms of the correct types.

Only the top level atoms are checked. So for example, the TJ operator takes an ArrayAtom consisting of NumAtoms and StringAtoms. This function will ensure that there is one ArrayAtom available as a parameter. However it will not ensure that all items inside the array are NumAtoms or StringAtoms. Also resource lookups are not done so, for example, it is not checked that a font name actually exists in the font resource dictionary.

If the operator takes no parameters a zero length array will be returned. If the operator parameters are incorrect or if the operator is not recognized then the return value will be null. In this unusual situation you may wish to set the [OpAtom.Text](../2-properties/text.md) to white space to remove the invalid operator from the content stream. While this does not fix the underlying problem, it will at least prevent applications like Acrobat from reporting an error.
