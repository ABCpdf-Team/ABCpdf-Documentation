# Strike Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to apply a strikethrough effect. |

## Notes

This property determines whether a strikethrough is applied to text.

## Example

In this example we add some strikethrough styled text to a document.

```csharp
using var doc = new Doc();
string text = "Gallia est omnis divisa in partes tres, quarum unam incolunt Belgae, aliam Aquitani, tertiam qui ipsorum lingua Celtae, nostra Galli appellantur.";
doc.Rect.Inset(20, 40);
doc.TextStyle.Size = 96;
doc.TextStyle.Strike = true;
doc.AddText(text);
doc.Save("stylestrike.pdf");
```

![stylestrike.pdf](../../../images/pdf/stylestrike.pdf.png)  
stylestrike.pdf
