# Flags Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `FieldFlags` | n/a | No | The Field Flags (Ff) entry |

## Notes

This property is used to access or change the flags (Ff entry) for the field.

The FieldFlags type is a flags enumeration so different values can be combined together using bitwise operations.

The FieldFlags enumeration may take the following values:

- ReadOnly - Do not let the user change the value of the field.
- Required - Require that the field has a value at the time it is exported by a form submission action.
- NoExport - Do not export the value of the field as part of a form submission action.
- NoToggleToOff - This is used for radio buttons and specifies that exactly one button shall be selected at all times.
- Radio - Indicates whether the field is a radio button or a checkbox. This field is ignored if the Pushbutton flag is set.
- Pushbutton - Whether this field is a pushbutton that stores no permanent value.
- RadiosInUnison - Allow radio buttons with the same 'on' value to turn on and off together.
- Multiline - Allow a text field to contain multiple lines of text.
- Password - Display text field as a password box in which the text contents are obscured.
- FileSelect - Display a text field that allows a file to be selected. When the form is submitted the contents of the file will be used as the value of the field.
- DoNotSpellCheck - Text in this text or choice field shall not be spell checked.
- DoNotScroll - Text in this text field shall not scroll. Once text has been entered which fills the field it shall accept no further characters.
- Comb - Use the MaxLen property to equally space out text field characters into a comb-like slot position.
- RichText - The value of this text field shall be a rich text string.
- Combo - Whether this field is a combo or list field.
- Edit - Whether field shall present an editable text box in addition to a list.
- Sort - Whether entries in the list shall be put into alphabetical order.
- MultiSelect - Whether more than one entry in the list can be selected at the same time.
- CommitOnSelChange - A change to the value of this field will be committed as soon as it is made.

The ReadOnly, Required and NoExport flags are used by all field types.

The NoToggleToOff, Radio, Pushbutton and RadiosInUnison flags are used by button fields.

The Multiline, Password, FileSelect, DoNotSpellCheck, DoNotScroll, Comb and RichText flags are used by text fields.

The Combo, Edit, Sort, MultiSelect, DoNotSpellCheck and CommitOnSelChange are used by choice fields.

For code shoing how to check, set or clear flags see the [FontObject.Flags](../../fontobject/2-properties/flags.md) property.
