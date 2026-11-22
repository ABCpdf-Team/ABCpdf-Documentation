# Options Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string[]` | See description. | No | The field options. |

## Notes

The options available for the value of this field.

Typically you assign a value using the [Value](value.md) property. Some fields such as Text fields will accept any value. Others such as Checkboxes and List Boxes accept only a limited range of options. The field options tell you what options are available for a particular field.

The unmarked state of a Checkbox or Radio Button is always "Off". The marked state varies and is available via item zero of this property.

The set of options for a Combo Box or List Box can be obtained directly via this property.

Pushbuttons, Signatures and Text fields do not have options.

## Example

Also see example code in: [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md).
