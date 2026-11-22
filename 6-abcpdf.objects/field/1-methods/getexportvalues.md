# GetExportValues Function

Gets the export values for this field.

## Syntax

*C#*

[`string`](../index.md)`[] GetExportValues()`

## Params

| Name | Description |
| :---: | --- |
| return | An array of strings - one for each option. The size of the array is always equal to the number of [Options](../2-properties/options.md). |

## Notes

Gets the export values for this field.

Choice fields such as Combo boxes and Lists have a value selected from one of their Options. However it is possible to specify an export value which is different from the value of field. The export value will be used if the form data is exported or submitted in some way so it is purely for external use. This function allows you to get the export values from the field.

Please note that export values are only meaningful for fields of [FieldType](../2-properties/fieldtype.md) FieldType.Combo or FieldType.List and they are only relevant for form export.
