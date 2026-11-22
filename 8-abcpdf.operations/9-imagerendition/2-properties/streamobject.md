# StreamObject Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`StreamObject`](../../../6-abcpdf.objects/streamobject/index.md) | n/a | Yes | The StreamObject in which the image draw operation is contained. |

## Notes

The StreamObject in which the image draw operation is contained.

The combination of the StreamObject, StreamOffset and StreamLength allows you to precisely locate the image draw command sequence in the PDF content stream. This can then be used to modify or delete this particular command.
