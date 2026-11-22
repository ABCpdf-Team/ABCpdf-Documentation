# TextAlignment Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `AlignmentType` | n/a | No | The alignment for the text |

## Notes

The alignment for the text.

The AlignmentType enumeration may take the following values:

- Left
- Center
- Right

Getting this property gets the effective value which may be inherited. Setting this property sets the alignment on this item itself.

This feature is referred to as quadding within the Adobe PDF Specification. We call it alignment because quadding is not normal terminology.

The appearance of the field is not updated until you change the [Value](value.md) or call [UpdateAppearance](../1-methods/updateappearance.md).
