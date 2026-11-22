# AddForms Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether form fields should be live. |

## Notes

This property applies to the [ABCChrome](2-forchrome.md), [ABCGecko](2-forgecko.md) and [MSHTML](2-formshtml.md) engines.

This property determines whether form fields in HTML are reproduced as form fields in the final PDF output.

Form fields in PDF do not work exactly the same as form fields in HTML so while the results will be similar they may not be identical.

The ABCChrome engine relies on JavaScript for this feature, so if you set the [UseScript](usescript.md) property to false, it will cease to operate.

## Example

The following example shows the effect that this parameter has on HTML rendering.

```csharp
using var doc = new Doc();
// Covert html form fields to the pdf form fields in the output file
doc.HtmlOptions.AddForms = true;
int id = doc.AddImageUrl("https://www.nasa.gov/forms/submit-a-question-for-nasa/");
// Save the document
doc.Save("HtmlOptionsAddForms.pdf");
```

![HtmlOptionsAddForms.pdf](../../../images/pdf/HtmlOptionsAddForms.pdf.png)  
HtmlOptionsAddForms.pdf
