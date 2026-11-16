# GetParameter Function

Gets the parameter associated with the OpAtom at the specified index and validates that the atom is of the correct type

## Syntax

[C#]

```csharp
static <a href="../../1-atom/default.htm">Atom</a> GetParameter(<a href="../../arrayatom/default.htm">ArrayAtom</a> array, int index)
```

## Params

| **Name** | **Description** |
| --- | --- |
| array | The array in which the OpAtom is found. |
| index | The index to the OpAtom. |
| return | The parameter. |

## Notes

Gets the parameter associated with the OpAtom at the specified index and validates that the atom is of the correct type.

Only the top level atoms are checked. So for example, the TJ operator takes an ArrayAtom consisting of NumAtoms and StringAtoms. This function will ensure that there is one ArrayAtom available as a parameter. However it will not ensure that all items inside the array are NumAtoms or StringAtoms.

If the atom is not of the correct type, is not available in the array (e.g. because the array is too small) or the operator is unrecognized then the return value will be null. If the operator does not take any parameters the return will be null.

The Atom is the actual object in the supplied array so changing the value of the Atom will change the value in the array. If the index does not point to an OpAtom or is not inside the array bounds then an exception will be thrown.

This function supports all the standard PDF operator types as defined in the PDF Specification apart from BI, ID and EI which are used for inline images. The reason these are not supported is because this sequence is read as a DictAtom with embedded data so you should never encounter it.

## Example

None
