# StreamOffset Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The offset within the uncompressed StreamObject to the start of the drawing operation that contains this image draw operation. |

## Notes

The offset within the uncompressed StreamObject to the start of the drawing operation that contains this image draw operation.

The combination of the StreamObject, StreamOffset and StreamLength allows you to precisely locate the image draw command sequence in the PDF content stream. This can then be used to modify or delete this particular command.
