# StreamOffset Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The offset within the content stream to the start of the drawing operation that contains this fragment. |

## Notes

The offset within the content stream to the start of the drawing operation that contains this fragment.

Each TextFragment spans a part of a PDF stream drawing operator. This property provides the offset within the uncompressed stream, to the start of that drawing operator.
