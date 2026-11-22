# FieldRotation Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | No | The rotation of the annotation in degrees counterclockwise to the page. |

## Notes

This property is used to access or change the rotation of the annotation in degrees counterclockwise to the page. This rotation must be a multiple of 90.

This property is only valid if this annotation is associated with a form field.

If you assign a color to this property the color supplied must be grayscale, RGB or CMYK. A value of null indicates that the border is transparent.

When you set this property a clone of the XColor you assign is created to avoid one XColor being shared by multiple annotations.

After changing this property you will need to call [UpdateAppearance](../1-methods/updateappearance.md) to realize the change.
