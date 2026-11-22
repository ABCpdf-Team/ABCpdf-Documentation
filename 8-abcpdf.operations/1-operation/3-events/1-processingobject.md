# ProcessingObject Event

Occurs just before an IndirectObject is processed.

## Syntax

*C#*

`event ProcessingObjectEventHandler ProcessingObject;`

`delegate void ProcessingObjectEventHandler(object sender, `[`ProcessingObjectEventArgs`](../../2-processingobjecteventargs/index.md)` e);`

## Params

| Name | Description |
| :---: | --- |
| sender | The Operation firing the event. |
| e | The [ProcessingObjectEventArgs](../../2-processingobjecteventargs/index.md) used to control the operation. |

## Notes

Typically you handle the ProcessingObject event in order to determine properties about an [IndirectObject](../../../6-abcpdf.objects/1-indirectobject/index.md) before processing.

Because the handler passes an EventArgs class which inherits from CancelEventArgs you can also choose to cancel the operation on the IndirectObject.

To associate the event with your event handle add an instance of the ProcessingObjectEventHandler delegate to the event. The event handler will be called whenever the event occurs.

## Example

See the [RecolorOperation.Recolor](../../3-recoloroperation/1-methods/recolor.md) method.
