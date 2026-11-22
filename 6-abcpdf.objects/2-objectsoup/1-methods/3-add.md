# Add Function

Adds an object to the Soup.

## Syntax

*C#*

`int Add(`[`IndirectObject`](../../1-indirectobject/index.md)` value)`

## Params

| Name | Description |
| :---: | --- |
| value | The IndirectObject to be added. |
| return | The position in which the new element was inserted. |

## Notes

This method adds an [IndirectObject](../../1-indirectobject/index.md) to the Soup.

An IndirectObject can exist in only one ObjectSoup at a time. If the object supplied is already contained in another ObjectSoup then a Clone of the object is inserted.

When an IndirectObject is inserted the [ID](../../1-indirectobject/2-properties/1-id.md) is updated to reflect the position of the object within the Soup.
