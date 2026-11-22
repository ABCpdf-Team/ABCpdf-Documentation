# GetFields Function

Get all the eForm fields in the document.

## Syntax

*C#*

[`IndirectObject`](../../1-indirectobject/index.md)`[] GetFields()`

## Params

| Name | Description |
| :---: | --- |
| return | All the eForm fields in the document. |

## Notes

This function scans the field tree and builds an array of all the fields in the document.

Most fields are [Annotations](../../annotation/index.md) which means they have a visible appearance on the page. All fields are [IndirectObjects](../../1-indirectobject/index.md).
