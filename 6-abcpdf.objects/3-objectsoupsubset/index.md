# ObjectSoupSubset Class

A set of [IndirectObjects](../1-indirectobject/index.md) from an [ObjectSoup](../2-objectsoup/index.md).

This may be used for selecting related objects and copying them to a new soup while maintaining the relationships between the items in the selection.

```
System.Object
    WebSupergoo.ABCpdf14.Objects.ObjectSoupSubset
```

## Methods

| Method | Description |
| --- | --- |
| [ObjectSoupSubset](1-methods/1-objectsoupsubset.md) | Construct an ObjectSoupSubset. |
| [CopyTo](1-methods/2-copyto.md) | Copy the objects in this subset to a new soup while preserving the relationships between the items in the selection. |
| ⚠ [AddFamily](1-methods/3-addfamily.md) | Add a parent object along with all objects it refers to. |
| ⚠ [AddOnlyOne](1-methods/4-addonlyone.md) | Add just this object ignoring any objects it may refer to. |

## Properties

| Property | Description |
| --- | --- |
| [Objects](2-properties/objects.md) | The collection of IndirectObjects currently contained in the subset. |
| [RemapIDs](2-properties/remapids.md) | Gets the dictionary used to map object IDs from the source soup to new object IDs in the final soup. |
| [RemapTypes](2-properties/remaptypes.md) | A dictionary used to redirect all objects of a specific type to a specific object ID. |
