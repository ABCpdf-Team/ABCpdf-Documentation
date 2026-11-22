# DoFormXObjects Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to call into Form [XObjects](../../../6-abcpdf.objects/formxobject/index.md) or not. |

## Notes

Whether to call into Form [XObjects](../../../6-abcpdf.objects/formxobject/index.md) or not.

A Form XObject is a self contained stream of graphics operations which can be referenced as a group.

A "Do" command in a content stream can call a named Form XObject.

If this property is false the Do command is processed but the [ContentStreamScanner](../index.md) will not call the commands in the Form XObject.

If this property is true then the Form XObject will be retrieved, the graphics state saved, and the commands in the FormXObject processed.

FormXObject can themselves call further FormXObjects so there may be a hierarchy of calls.

The current state of hierarchy is held in the [Owners](03-owners.md) property.
