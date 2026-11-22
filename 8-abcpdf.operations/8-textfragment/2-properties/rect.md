# Rect Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XRect`](../../../5-abcpdf/xrect/index.md) | n/a | Yes | The rectangle that contains the text of the fragment. |

## Notes

The rectangle that contains the text of the fragment.

Each TextFragment spans a part of a PDF stream drawing operator. The part may be the entire of the text drawn by the operator or it may be a section of the text within that operator.

This property reflects the area covered by the TextFragment.

This rectangle is encoded in PDF coordinates rather than any abstracted coordinate space.
