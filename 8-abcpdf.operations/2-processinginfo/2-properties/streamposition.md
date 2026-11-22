# StreamPosition Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `long?` | n/a | No | Gets or Sets the stream position of the source object, if applicable. |

## Notes

The value of this property when the [Operation.ProcessingObject](../../1-operation/3-events/1-processingobject.md) event is generated depends on the operation.

This property holds the position in the PDF stream. Set this value to null to end the processing of the current stream.

See the [RenderOperation.Save method.](../../6-renderoperation/1-methods/save.md)
