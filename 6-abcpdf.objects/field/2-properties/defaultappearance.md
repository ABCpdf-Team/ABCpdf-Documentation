# DefaultAppearance Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `ArrayAtom` | n/a | No | The default appearance (DA) used for the text |

## Notes

The default appearance (DA) used for the text.

The ArrayAtom is a sequence of PDF parameters and operators which makes up a complete drawing sequence.

This property controls the base set of drawing instructions used for controlling the appearance of variable text in a field. Getting this property gets the effective value which may be inherited. Setting this property sets the value on this item itself.

Similarly setting this property to null will remove the property on the item itself but the value may continue to be inherited. The appearance of the field is not updated until you change the [Value](value.md) or call [UpdateAppearance](../1-methods/updateappearance.md).
