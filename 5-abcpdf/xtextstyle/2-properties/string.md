# String Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | Variable | No | The text style as a string. |

## Notes

A string representation of the text style.

This covers all the properties of this class and can be sued for a save and restore stack.

## Example

The following code.

```csharp
var ts = new XTextStyle();
ts.String = "24.5 10 0 0 0 0 0";
Response.Write($"Size = {ts.Size}<br>");
Response.Write($"Indent = {ts.Indent}");
```

Produces the following output.

```
Size = 24.5
Indent = 10
```
