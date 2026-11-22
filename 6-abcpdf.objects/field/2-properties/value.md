# Value Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | The field value. |

## Notes

This property allows you access to the value of the field.

You may wish to assign or query the form field value using this property.

- Text fields have a free-text value.
- Checkboxes and Radio Buttons have a value which is either "Off" or the on-state of the control as specified in the [Options](options.md).
- Combo Boxes and List Boxes have values restricted to a set of selections as specified in the Options property.
- Pushbuttons and Signatures do not have a value.

Some fields are associated with JavaScript which may be used for validation or formatting. In the case that you assign a value which causes an exception in the JavaScript, that exception will be propagated up the chain and will cause a corresponding C# exception to be raised. If you do not want to run such script, set the [Doc.Form.UseFieldScript](../../../5-abcpdf/xform/2-properties/usefieldscript.md) property to false.

> **Common Operations.**
>
> Set the value of a text field:
>
> ```csharp
> theField.Value = "Mr Jones";
> ```
>
> Set a checkbox:
>
> ```csharp
> theField.Value = theField.Options[0];
> ```
>
> Clear a checkbox:
>
> ```csharp
> theField.Value = "Off";
> ```
>
> Set the fifth Radio Button in a group:
>
> ```csharp
> theField.Value = theField.Options[4];
> ```
>
> Read whether a checkbox is checked (ticked):
>
> ```csharp
> bool isChecked = theField.Value != "Off";
> ```
>
> Read which Radio Button in a group is selected. The value is the on-state of the selected button, or "Off" if none is selected:
>
> ```csharp
> string selected = theField.Value;
> ```

> **Multiline Form Fields Tip.**
>
> When inserting carriage returns into multiline form fields use carriage returns (\\r) only.
>
> Using line feeds (\\n) or a carriage return linefeed combination (\\r\\n) is less compatible with older versions of Acrobat.

## Example

Also see example code in: [ABCpdf eForm Fields Example](../../../4-examples/15-eform1.md).
