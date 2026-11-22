# ArrayElement\<T> Class

Class ArrayElement.

This class represents an array of typed Elements.

Since it is an array, the core Atom it is created from should be an ArrayAtom.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.ArrayElement<T>`

```
Implements: IList<T>, IList
```

```
Type T : The type of Element that this ArrayElement contains.
```

## Methods

| Method | Description |
| --- | --- |
| [ArrayElement\<T>](1-methods/01-arrayelement_t_.md) | Create a new ArrayElement. |
| [IndexOf](1-methods/02-indexof.md) | Determines the index of a specific Element. |
| ⚠ [Insert](1-methods/03-insert.md) | Inserts an Element into the array at the specified position. |
| ⚠ [RemoveAt](1-methods/04-removeat.md) | Removes the Element at the specified index. |
| ⚠ [Add](1-methods/05-add.md) | Add an Element to the end of the array. |
| [Clear](1-methods/06-clear.md) | Removes all Elements from the array. |
| [Contains](1-methods/07-contains.md) | Determines whether the array contains a specific Element. |
| [CopyTo](1-methods/08-copyto.md) | Copies the Elements into an array. |
| [Remove](1-methods/09-remove.md) | Removes an Element from the array. |
| [GetEnumerator](1-methods/10-getenumerator.md) | Returns an enumerator that iterates through the collection. |
|  | [inherited methods...](../1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [ElementType](2-properties/01-elementtype.md) | The Type of elements within the Array. |
| [ElementsIndirect](2-properties/02-elementsindirect.md) | Whether elements within the Array are required to be indirect. |
| [Nullable](2-properties/03-nullable.md) | Whether NullAtom values are acceptable within the array. |
| ⚠ [Item\[int index\]](<2-properties/04-item(intindex).md>) | Gets or sets the Element at the specified index. |
| [Count](2-properties/05-count.md) | Gets the number of Elements contained in the array. |
|  | [inherited properties...](../1086-element/index.md) |
