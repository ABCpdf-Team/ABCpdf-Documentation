# Flags Property

## Notes

This property is used to access or change the flags (Ff entry) for the field.

The FieldFlags type is a flags enumeration so different values can be combined together using bitwise operations.

The FieldFlags enumeration may take the following values:

The ReadOnly, Required and NoExport flags are used by all field types.

The NoToggleToOff, Radio, Pushbutton and RadiosInUnison flags are used by button fields.

The Multiline, Password, FileSelect, DoNotSpellCheck, DoNotScroll, Comb and RichText flags are used by text fields.

The Combo, Edit, Sort, MultiSelect, DoNotSpellCheck and CommitOnSelChange are used by choice fields.

For code shoing how to check, set or clear flags see the FontObject.Flags property.

## Example

None.

