# TextOffset Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The offset to the Text of this fragment. |

## Notes

The character offset in the [RawText](rawtext.md) to the [Text](text.md) of this fragment.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

This property reflects the offset to the Text of the TextFragment - the selected portion within the RawText of the TextFragment. An offset may be needed because the Text may not be unique within the RawText.

For example a TextFragment may represent the letter 'a' in a text operator which draws "abracadabra". Without the offset there is no way to know which 'a' the fragment refers to.
