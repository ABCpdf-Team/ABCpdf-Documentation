# DoGraphicsStateSoftMasks Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to call into graphics state soft mask Form [XObjects](../../../6-abcpdf.objects/formxobject/index.md) or not. |

## Notes

Whether to call into graphics state soft mask Form [XObjects](../../../6-abcpdf.objects/formxobject/index.md) or not.

A Form XObject is a self contained stream of graphics operations which can be referenced as a group.

A graphics state soft mask Form XObject is a Form XObject in a graphics state which defines a soft mask for alpha blending.

A "gs" command in a content stream can set up a graphics state soft mask.

If this property is false the gs command is processed but the [ContentStreamScanner](../index.md) will not call the commands in the Form XObject.

If this property is true then the first time it is encountered, the Form XObject will be retrieved, and the commands in the FormXObject processed.
