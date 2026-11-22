# DateTimeFormat Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IFormatProvider` | null | No | The format provider for formatting dates and times. |

## Notes

This property specifies the formats of dates and times for the appearances of fields that use javascript functions such as AFDate_FormatEx, AFTime_FormatEx.

A null value indicates the use of the locale-independent default formats.

You can see the appearances when the PDF is rendered to an image.

If the fields are not stamped, Adobe Reader may ignore the appearances and generate new appearances so you may not see the dates and times in the specified formats when viewing in Adobe Reader.
