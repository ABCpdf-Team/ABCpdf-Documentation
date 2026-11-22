# StructParent Constructor

Construct a StructParent given an owner and a container.

## Syntax

*C#*

`StructParent(`[`IndirectObject`](../../../6-abcpdf.objects/1-indirectobject/index.md)` owner, `[`IndirectObject`](../../../6-abcpdf.objects/1-indirectobject/index.md)` container)`

## Params

| Name | Description |
| :---: | --- |
| owner | The owner of the marked content sequences. |
| container | The container of the marked content sequences. |

## Notes

Construct a StructParent given an owner and a container. Often the two are the same.

For example a Page or a Form XObject have the same Owner and Container. However an Annotation may have multiple appearance streams so you need to specify the Owner (the Annotation) and the Container (the appearance stream) separately.
