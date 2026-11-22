# TextFont Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`FontObject`](../../fontobject/index.md) | n/a | Yes | The font used for the text |

## Notes

The font used for the text.

The [FontObject](../../fontobject/index.md) that comprises this property is derived from the [DefaultAppearance](defaultappearance.md) for the field.

Getting this property gets the effective value which may be inherited from a parent field or from document defaults. To change this property use the [SetFont](../1-methods/setfont.md) function.
