# TextSize Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `double?` | n/a | Yes | The font size used for the text |

## Notes

The font size used for the text.

This is derived from the [DefaultAppearance](defaultappearance.md) for the field.

Getting this property gets the effective value which may be inherited from a parent field or from document defaults. To change this property use the [SetFont](../1-methods/setfont.md) function.

The value zero has a special significance and indicates that the text in the field should be scaled to fit the area available.

The value is null if no font size can be determined.
