# Clone Function

Create a deep copy of the current IndirectObject.

## Syntax

*C#*

[`IndirectObject`](../index.md)` Clone()`

## Params

| Name | Description |
| :---: | --- |
| return | The newly created copy. |

## Notes

This function creates a new object that is a copy of this instance.

The copy is a deep copy and all contained objects are copied as part of the clone process. The copy is not associated with any [ObjectSoup](../../2-objectsoup/index.md).

Note that many methods require that an object be part of a soup. For this reason it is quite common to call [doc.ObjectSoup.Add](../../2-objectsoup/1-methods/3-add.md) with the newly cloned object before calling methods on it. If at a later date the object needs to be deleted this can be done using [ObjectSoup.Remove](../../2-objectsoup/1-methods/8-remove.md).
