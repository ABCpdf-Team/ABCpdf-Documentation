# ObjectSoupSubset Constructor

Construct an ObjectSoupSubset.

## Syntax

*C#*

`ObjectSoupSubset(`[`ObjectSoup`](../../2-objectsoup/index.md)` soup)`

## Params

| Name | Description |
| :---: | --- |
| soup | The soup from which objects will be selected. |

## Notes

Create an ObjectSoupSubset.

An ObjectSoupSubset is specific to a particular ObjectSoup and may only contain [IndirectObjects](../../1-indirectobject/index.md) from that soup.

For this reason you should specify the soup in question at the point of construction. If later you attempt to add objects from a different soup then an exception will be raised.
