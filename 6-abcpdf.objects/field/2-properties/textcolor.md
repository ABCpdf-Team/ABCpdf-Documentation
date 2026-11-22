# TextColor Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`XColor`](../../../5-abcpdf/xcolor/index.md) | n/a | No | The color used for the text |

## Notes

The color used for the text.

This is derived from the [DefaultAppearance](defaultappearance.md) for the field.

Getting this property gets the effective value which may be inherited. Setting this property sets the value on this item itself. When you set this property a clone of the XColor you assign is created to avoid one XColor being shared by multiple fields.

The appearance of the field is not updated until you change the [Value](value.md) or call [UpdateAppearance](../1-methods/updateappearance.md).
