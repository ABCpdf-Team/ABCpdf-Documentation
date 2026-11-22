# GetFieldOptions Function

The field options for any form field associated with this annotation.

## Syntax

```csharp
string[] GetFieldOptions()
```

## Params

| Name | Description |
| :---: | --- |
| return | The list of field options. |

## Notes

This function gets the field options for any form field associated with this annotation.

Typically you assign a value using the [FieldValue](../2-properties/fieldvalue.md). Some fields such as Text fields will accept any value. Others such as Checkboxes and List Boxes accept only a limited range of options. You can obtain these options using this method.

The unmarked state of a Checkbox or Radio Button is always "Off". The marked state varies and is available via this function. This function will always return a one item array for this type of field.

The set of options for a Combo Box or List Box is available via this property. This function will return as many items as there are possible values.

Pushbuttons, Signatures and Text fields do not have options.
