# Options Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "" | No | The state options for low level drawing control. |

## Notes

The options property is an advanced feature which allows low level control over PDF drawing. It is important to use it correctly as incorrect use can corrupt your documents.

The value of the options property is inserted into the PDF content stream after state has been established but before any drawing has taken place. You can use this property to insert your own state commands. This is most commonly used for drawing dashed lines.

[FillRect](../1-methods/fillrect.md), [FrameRect](../1-methods/framerect.md), [AddLine](../1-methods/addline.md) and [AddArc](../1-methods/addarc.md) all insert the options parameter.

You can find details of graphics state parameters and how to use them in the [Adobe PDF Specification](http://partners.adobe.com/).

## Example

The following code adds an arc to a document. It uses the options parameter to make the line dashed rather than solid.

```csharp
using var doc = new Doc();
doc.Width = 24;
doc.Color.String = "0 120 0";
doc.Options = "[6 10] 6 d";
doc.AddArc(0, 270, 300, 400, 200, 300);
doc.Save("docoptions.pdf");
```

![docoptions.pdf](../../../images/pdf/docoptions.pdf.png)  
docoptions.pdf
