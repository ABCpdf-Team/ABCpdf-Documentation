# MultiSelect Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | See description. | Yes | Whether the field supports multiple selections. |

## Notes

This property allows you to determine if the field supports multiple values.

Most fields have a single value. A text box contains one item of text. A radio button group has one selected button. A checkbox can be checked or clear.

However some kinds of fields can hold multiple values. For example a list box can be used to select multiple items. If this is the case then the MultiSelect property will be set to true.

If the field supports multiple selection then the [Value](value.md) of the field will be a comma delimited list of the items which are selected.
