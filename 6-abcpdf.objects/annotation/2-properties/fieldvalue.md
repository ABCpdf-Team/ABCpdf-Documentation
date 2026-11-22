# FieldValue Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | n/a | No | The field value for any form field associated with this annotation. |

## Notes

The field value for any form field associated with this annotation.

You may wish to assign or query the form field value using this property.

Checkboxes and Radio Buttons have a value which is either "Off" or the on-state of the control as accessible via [GetFieldOptions](../1-methods/getfieldoptions.md).

Text fields have a free-text value.

Combo Boxes and List Boxes have values restricted to a set of selections as accessible via [GetFieldOptions](../1-methods/getfieldoptions.md).

Pushbuttons and Signatures do not have a value.
