# ObjectSoup Class

A non-traditional collection of [Indirect Objects](../1-indirectobject/index.md) making up the content of a PDF.

This collection has some of the characteristics of an Array and some of a Dictionary. Objects are referred to by index - starting at zero - like an Array. However they do not move within the list because they are identified by index - like a Dictionary with numeric keys.

We call this type of hybrid object a Soup. We assign it traditional interfaces to make it easier to use.

```
System.Object
    WebSupergoo.ABCpdf14.Objects.ObjectSoup
```

```
Implements: IList<IndirectObject>, ICollection<IndirectObject>, IEnumerable<IndirectObject>, IList, ICollection, IEnumerable, IDisposable
```

## Methods

| Method | Description |
| --- | --- |
| [CopyTo](1-methods/2-copyto.md) | Copies the objects in the Soup to an Array. |
| [Add](1-methods/3-add.md) | Adds an object to the Soup. |
| [Clear](1-methods/4-clear.md) | Removes all objects from the Soup. |
| [Contains](1-methods/5-contains.md) | Determines whether the Soup contains a specific object. |
| [IndexOf](1-methods/6-indexof.md) | Determines the index of a specific object. |
| ⚠ [Insert](1-methods/7-insert.md) | Inserts an object into the Soup at the specified position. |
| [Remove](1-methods/8-remove.md) | Removes an object from the Soup. |
| ⚠ [RemoveAt](1-methods/9-removeat.md) | Removes an object at a specified position from the Soup. |
| [GetEnumerator](1-methods/getenumerator.md) | Gets an enumerator for the Soup. |

## Properties

| Property | Description |
| --- | --- |
| [Count](2-properties/1-count.md) | The number of items in the Soup. |
| ⚠ [Item](2-properties/2-item.md) | Gets or sets the object at the specified index. |
| [Catalog](2-properties/3-catalog.md) | The Catalog for the document. |
| [Convert](2-properties/3-convert.md) | A Converter for the document. |
| [Trailer](2-properties/4-trailer.md) | The Trailer or XRef for the document. |
| [Revisions](2-properties/5-revisions.md) | The number of incremental updates. |
| [RevisionEOFs](2-properties/6-revisioneofs.md) | This provides the end of trailer offsets within the underlying PDF stream. |
