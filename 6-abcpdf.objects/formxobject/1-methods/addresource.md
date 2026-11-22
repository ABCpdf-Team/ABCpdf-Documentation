# AddResource Function

Add a particular type of resource

## Syntax

*C#*

`string AddResource(`[`IndirectObject`](../../1-indirectobject/index.md)` resource, string type, string name)`

## Params

| Name | Description |
| :---: | --- |
| resource | The resource to be added. |
| type | The type of resource. |
| name | The format of the name that should be used. |

## Notes

Add a particular type of resource to the Form XObject.

Form XObjects may contain default resources usable by the page content stream. The most common resource types are "Font", "XObject" and "ColorSpace". For further details see the PDF Specification.

This method allows you to add new resources to the Form XObject. You may supply your own name for the resource but if the name is already in use, it may need to be modified. For this reason the function returns the value which was actually used for the addition.
