# ArrayAtom Class

An Atom containing an array of other Atoms.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Atoms.Atom`](../1-atom/index.md)  
`       WebSupergoo.ABCpdf14.Atoms.ArrayAtom`

`Implements: IList<Atom>, ICollection<Atom>, IEnumerable<Atom>, IList, ICollection, IEnumerable, IEquatable<ArrayAtom>, IComparable<ArrayAtom>`

## Methods

| Method | Description |
| --- | --- |
| Ⓢ [FromXRect](1-methods/fromxrect.md) | Create an ArrayAtom from a XRect representation. |
| Ⓢ [FromXTransform](1-methods/fromxtransform.md) | Create an ArrayAtom from a XTransform representation. |
| Ⓢ [FromContentStream](1-methods/fromcontentstream.md) | Create an array of Atoms from a byte array containing a sequence of PDF objects. |
| Ⓢ [FromNames](1-methods/fromnames.md) | Create an ArrayAtom of NameAtoms from a list of strings. |
| Ⓢ [FromStrings](1-methods/fromstrings.md) | Create an ArrayAtom of StringAtoms from a list of strings. |
| Ⓢ [FromNums](1-methods/fromnums.md) | Create an ArrayAtom of NumAtoms from a list of numbers. |
| [ArrayAtom](1-methods/1-arrayatom.md) | ArrayAtom Constructor. |
| [CopyTo](1-methods/2-copyto.md) | Copies the Atoms into an array. |
| [Add](1-methods/3-add.md) | Add an item to the end of the array. |
| [Clear](1-methods/4-clear.md) | Removes all Atoms from the array. |
| [Contains](1-methods/5-contains.md) | Determines whether the array contains a specific Atom. |
| [IndexOf](1-methods/6-indexof.md) | Determines the index of a specific Atom. |
| ⚠ [Insert](1-methods/7-insert.md) | Inserts an Atom into the array at the specified position. |
| [Remove](1-methods/8-remove.md) | Removes an Atom from the array. |
| ⚠ [RemoveAt](1-methods/9-removeat.md) | Removes an Atom at a specified position from the array. |
| ⚠ [AddRange](1-methods/addrange.md) | Adds the elements in the supplied array at the end of this array. |
| [Equals](1-methods/equals.md) | Test whether the two ArrayAtoms are the same. |
| [GetEnumerator](1-methods/getenumerator.md) | Gets an enumerator for the Collection. |
| ⚠ [GetRange](1-methods/getrange.md) | Creates a shallow copy of a range of elements in the source array. |
| ⚠ [InsertRange](1-methods/insertrange.md) | Inserts the elements in the supplied array into this array at the specified index. |
| ⚠ [RemoveRange](1-methods/removerange.md) | Removes a range of elements from the source array. |
| [ToString](1-methods/tostring.md) | The string representation of the StringAtom as it would appear in a PDF. |
|  | [inherited methods...](../1-atom/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Count](2-properties/count.md) | The number of Atoms in the array. |
| ⚠ [Item](2-properties/item.md) | Get or set the Atom at the specified index. |
| [IsContentStream](2-properties/iscontentstream.md) | Determines whether the ArrayAtom represents a content stream or not. |
| [ItemsPerLine](2-properties/itemsperline.md) | Determines the number of items that will be output per line when serializing an array. |
|  | [inherited properties...](../1-atom/index.md) |
