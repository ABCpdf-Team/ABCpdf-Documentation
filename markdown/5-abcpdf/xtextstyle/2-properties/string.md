# String Property

&nbsp;

## Notes

A string representation of the text style.

This covers all the properties of this class and can be sued for a save and restore stack.

## Example

The following code.

```csharp
var ts = new XTextStyle();
ts.String = "24.5 10 0 0 0 0 0";
Response.Write($"Size = {ts.Size}&lt;br&gt;");
Response.Write($"Indent = {ts.Indent}");
```

