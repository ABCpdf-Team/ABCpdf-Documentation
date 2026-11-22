# Resolve Function

Get the IndirectObject that the reference is pointing to.

## Syntax

*C#*

[`IndirectObject`](../../../6-abcpdf.objects/1-indirectobject/index.md)` Resolve(ObjectSoup objects)`

## Params

| Name | Description |
| :---: | --- |
| objects | The collection of objects to be searched. |
| return | The matching IndirectObject. |

## Notes

This function resolves a RefAtom to the [IndirectObject](../../../6-abcpdf.objects/1-indirectobject/index.md) that it references.

If the RefAtom is referencing another RefAtom then the Resolve process will continue until an Atom which is not a RefAtom is found. If no item is found then null is returned.
