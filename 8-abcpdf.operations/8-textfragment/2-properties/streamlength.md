# StreamLength Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The length within the content stream of the drawing operation that contains this fragment. |

## Notes

The length within the content stream of the drawing operation that contains this fragment.

Each TextFragment spans a part of a PDF stream drawing operator. This property provides the length from the offset within the uncompressed stream, to the end of that drawing operator.
