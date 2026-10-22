# Value Property

## Notes

This property allows you access to the value of the field.

You may wish to assign or query the form field value using this property.

Some fields are associated with JavaScript which may be used for validation or formatting. In the case that you assign a value which causes an exception in the JavaScript, that exception will be propagated up the chain and will cause a corresponding C# exception to be raised. If you do not want to run such script, set the Doc.Form.UseFieldScript property to false.

Common Operations.

Set the value of a text field:

[C#] theField.Value = "Mr Jones";

Set a checkbox:

[C#] theField.Value = theField.Options[0];

Clear a checkbox:

[C#] theField.Value = "Off";

Set the fifth Radio Button in a group:

[C#] theField.Value = theField.Options[4];

Read whether a checkbox is checked (ticked):

[C#] bool isChecked = theField.Value != "Off";

Read which Radio Button in a group is selected. The value is the on-state of the selected button, or "Off" if none is selected:

[C#] string selected = theField.Value;

Multiline Form Fields Tip.

When inserting carriage returns into multiline form fields use carriage returns (\r) only.

Using line feeds (\n) or a carriage return linefeed combination (\r\n) is less compatible with older versions of Acrobat.

## Example

Also see example code in: ABCpdf eForm Fields Example.

