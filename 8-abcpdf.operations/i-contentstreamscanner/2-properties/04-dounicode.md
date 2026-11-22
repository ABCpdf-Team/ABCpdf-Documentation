# DoUnicode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to convert text to Unicode or not. |

## Notes

Whether to convert text to Unicode or not.

If this property is true then the [ShowText](../1-methods/04-showtext.md) function will be passed the Unicode value of any text. If it is false then null will be passed.

This is quite computationally expensive so if you do not need to know the content of the text then you can disable this feature.
