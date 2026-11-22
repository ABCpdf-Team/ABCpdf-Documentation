# DoWidths Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to calculate text widths or not. |

## Notes

Whether to calculate text widths or not.

If this property is true then the [ShowText](../1-methods/04-showtext.md) function will be passed the character and advance widths for text. If it is false then null will be passed.

This is quite computationally expensive so if you do not need to know the current text position on the line then you can disable this feature.
