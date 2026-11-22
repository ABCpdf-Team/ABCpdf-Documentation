# Remap Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to reduce size by remapping objects. |

## Notes

This property determines if output size should be reduced by remapping objects.

PDF documents consist of a sequence of numbered objects. If objects have been deleted there may be gaps in this sequence. Gaps can lead to PDFs which are larger than necessary.

If this property is set to true then, when the document is saved, remapping will occur to eliminate these gaps.

Note that if the [Linearize](linearize.md) property is set to true then remapping will occur no matter the value of this property.
