# Text Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | n/a | Yes | The text of the fragment. A fragment may span only a portion of the complete text drawing operator. |

## Notes

The text of the fragment. A fragment may span only a portion of the complete text drawing operator.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

This property reflects the text of the TextFragment - the selected portion within the drawing operator.
