# CopyTo Function

Copy the objects in this subset to a new soup while preserving the relationships between the items in the selection.

## Syntax

*C#*

`void CopyTo(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`

## Params

| Name | Description |
| :---: | --- |
| soup | The destination soup. |

## Notes

Copy the objects in this subset to a new soup while preserving the relationships between the items in the selection.

Each [IndirectObject](../../1-indirectobject/index.md) in the selection has a unique ID. However the destination soup may already contain items with this ID. For this reason the process of copying the objects requires a remapping of old IDs to new ones in the destination soup.

Some remap entries may already have been created during addition as the entries in the [RemapTypes](../2-properties/remaptypes.md) property get applied. However most will be created at the point that the CopyTo method is called. The remap table is accessible via the [RemapIDs](../2-properties/remapids.md) property.
