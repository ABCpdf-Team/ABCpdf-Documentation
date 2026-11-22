# AdbeExtLevel Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int[]` | null | No | The minimum extension level of Adobe Supplement to the PDF specification required to support this object. |

## Notes

The minimum extension level of Adobe Supplement to the PDF specification required to support this object.

The value must be null or contain two elements. If it is null, the object requires no Adobe extension (for getting), or the extension level is removed (for setting). The first element is the base version; the second element is the extension level.

For example, a base version of 7 and an extension level of 3 indicate that the features specified by the object require a PDF consumer supporting base version 1.7 and extension level 3. Adobe Reader 9.1 was the first browser to support it.
