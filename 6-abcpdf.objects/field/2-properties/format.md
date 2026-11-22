# Format Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | See description. | Yes | The field format. |

## Notes

The format for this field.

The PDF specification does not define how fields should be formatted. Acrobat uses a set of standard JavaScripts to perform field formatting.

This property reflects the JavaScript formatting function which is being used and the values which are being passed to it. A typical value might be:

```jscript
AFNumber_Format(2, 3, 0, 0, "", true);
```

This defines a number format with two decimal places. Other typical formatting functions you will see include AFPercent_Format, AFSpecial_Format, AFDate_Format and AFTime_Format.

For a definitive guide to these formatting functions you should see the JavaScripts which come installed with your version of Acrobat. However as of early 2019, the following are defined.

```jscript
AFNumber_Format(decimals, separator, negative, unused, currency, prepend);
AFPercent_Format(decimals, separator);
AFSpecial_Format(special_type)
AFDate_Format(date_type)
AFDate_FormatEx(date_time_format)
AFTime_Format(time_type)
AFTime_FormatEx(date_time_format)
```

| Name | Description | Example |
| --- | --- | --- |
| decimals | The number of figures to display after the decimal point.<br>eg for "2" the output might be "1,234.567". |  |
| separator | A number indicating the style of separators for thousands and decimal points.<br>• 0 - Thousands separated using commas and decimals separated using a period. eg "1,234.56"<br>• 1 - Decimals separated using a period. eg "1234.56"<br>• 2 - Thousands separated using periods and decimals separated using a comma. eg "1.234,56"<br>• 3 - Decimals separated using a comma. eg "1234,56" |  |
| negative | A number indicating the style for negative numbers.<br>• 0 - A preceding dash indicate negative numbers. eg "-1,234.56"<br>• 1 - Black for positive and red for negative numbers. eg "1,234.56"<br>• 2 - Negative numbers placed in parentheses. eg "(1.234,56)"<br>• 3 - Negative numbers placed in parentheses. Also black for positive and red for negative. eg "(1.234,56)" |  |
| unused | This parameter is currently unused. |  |
| currency | A string indicating the currency symbol to be added to numbers.<br>eg for "$" the output might be "$1,234.56". |  |
| prepend | A boolean which; if true, indicates that the currency symbol should be prepended; and if false, that it should be appended.<br>eg for "false" the output might be "1,234.56 €". |  |
| special_type | A number indicating a fixed format style used for structures such as telephone numbers and zip codes.<br>• 0 - Five digit zip code. eg "12345"<br>• 1 - Zip plus-four code. eg "12345-6789"<br>• 2 - A long or short telephone number depending on the number of digits. eg "(123) 456--7890" or "456--7890"<br>• 3 - Social security number. eg "123-45-6789" |  |
| date_type | A number indicating a format style used to indicate a date.<br>See date_time_format below for details of the format.<br>• 0 - "m/d"<br>• 1 - "m/d/yy"<br>• 2 - "mm/dd/yy"<br>• 3 - "mm/yy"<br>• 4 - "d-mmm"<br>• 5 - "d-mmm-yy"<br>• 6 - "dd-mmm-yy"<br>• 7 - "yy-mm-dd"<br>• 8 - "mmm-yy"<br>• 9 - "mmmm-yy"<br>• 10 - "mmm d, yyyy"<br>• 11 - "mmmm d, yyyy"<br>• 12 - "m/d/yy h-MM tt"<br>• 13 - "m/d/yy HH-MM" |  |
| time_type | A number indicating a format style used to indicate a time.<br>See date_time_format below for details of the format.<br>• 0 - "HH:MM"<br>• 1 - "h:MM tt"<br>• 2 - "HH:MM:ss"<br>• 3 - "h:MM:ss tt" |  |
| date_time_format | A string indicating style used to format a date or time.<br>See date_type above for examples of the types of styles you can use.<br>The "m" and "mm" sequences indicate the month using a one and two digit number respectively - the former being of limited use. The "mmm" and "mmmm" sequence indicates the month using a short three character and full name respectively.<br>The "d" and "dd" sequences indicates the ordinal day of the month (the former being of limited use) while the "ddd" and "dddd" sequences indicate the day of the week using a short three character and full name respectively.<br>The "yy" indicates the short form of the year and the "yyyy" selector indicates the long form of the year.<br>The "h", "hh", "H" and "HH" sequences indicate the hours. The upper case versions work on the twenty-four hour clock and the lower case ones on the twelve hour clock. The one character selectors indicate the hour using one character (obviously of limited use) and the two character selectors indicate it using two characters.<br>The "MM" selector indicates the number of minutes past the current hour.<br>The "s" and "ss" selectors indicate the number of seconds past the current minute. The former uses one digit - of limited use - and the latter uses two.<br>The "t" and "tt" indicate the time relative to the meridiem - am or pm - using one digit or two characters respectively. |  |
