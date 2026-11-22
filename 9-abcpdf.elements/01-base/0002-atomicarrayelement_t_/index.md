# AtomicArrayElement\<T> Class

Class AtomicArrayElement.

This class represents an array of atomic elements.

By atomic, we mean elements that can be directly represented using a .NET equivalent such as a string or int.

On the PDF side the elements that are acceptable may be types such as StringAtom or NameAtom.

The set of acceptable types may be indicated using the AtomicTypes property.

Since it is an array, the core Atom this class is created from should be an ArrayAtom.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.AtomicArrayElement<T>`

```
Implements: IList<T>, IList
```

```
Type T : Can be string, int, double, double? or bool.
```

## Methods

| Method | Description |
| --- | --- |
| ⚠ [AtomicArrayElement\<T>](1-methods/01-atomicarrayelement_t_.md) | Create a new AtomicArrayElement. |
| [IndexOf](1-methods/02-indexof.md) | Determines the first index matching a specific value. |
| ⚠ [Insert](1-methods/03-insert.md) | Inserts an item into the array at the specified position. |
| ⚠ [RemoveAt](1-methods/04-removeat.md) | Removes the item at the specified index. |
| [Add](1-methods/05-add.md) | Add an item to the end of the array. |
| [Clear](1-methods/06-clear.md) | Removes all items from the array. |
| [Contains](1-methods/07-contains.md) | Determines whether the array contains a specific value. |
| [CopyTo](1-methods/08-copyto.md) | Copies the items into an array. |
| [Remove](1-methods/09-remove.md) | Removes the first matching value from the array. |
| [GetEnumerator](1-methods/10-getenumerator.md) | Returns an enumerator that iterates through the collection. |
|  | [inherited methods...](../1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [AtomicTypes](2-properties/01-atomictypes.md) | The Type of elements within the Array. |
| ⚠ [Item\[int index\]](<2-properties/02-item(intindex).md>) | Gets or sets the items at the specified index. |
| [Count](2-properties/03-count.md) | Gets the number of items contained in the array. |
|  | [inherited properties...](../1086-element/index.md) |
