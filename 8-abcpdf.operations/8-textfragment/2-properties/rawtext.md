# RawText Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | n/a | Yes | The text specified in the drawing operator or the text array item of the drawing operator. |

## Notes

The text of the drawing operator.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

This property reflects the entire text of the drawing operator. If the drawing operator is a text array operator then this property reflects the text of the portion of the array referenced by the [TextSpanIndex](textspanindex.md) property.
