# Font Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | No | The current Font ID. |

## Notes

The font used for drawing text.

This property holds the current Font ID and determines the style of text that is added to the document using methods like [AddText](../1-methods/addtext.md).

To get a Font ID you need to add your font to the current document using the [AddFont](../1-methods/addfont.md) method.

The Font property is an accessor for the [XTextStyle.Font](../../xtextstyle/2-properties/font.md) property.

## Example

The following example adds two blocks of styled text to a document. The first block is in Helvetica and the second in Courier.

```csharp
using var doc = new Doc();
doc.FontSize = 96; // big text
doc.Font = doc.AddFont("Helvetica");
doc.AddText("Helvetica Text.");
doc.Font = doc.AddFont("Courier");
doc.AddText("Courier Text.");
doc.Save("docfont.pdf");
```

![docfont.pdf](../../../images/pdf/docfont.pdf.png)  
docfont.pdf

Also see example code in: [ABCpdf Tagged Text Example](../../../4-examples/02-texttagged.md), [ABCpdf Unicode Example](../../../4-examples/12-unicode.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf eForm Stamp Example](../../../4-examples/15-eform3.md), [ABCpdf eForm FDF Example](../../../4-examples/16-eformfdf.md), [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md), [Doc AddFont Function](../1-methods/addfont.md), [Doc AddText Function](../1-methods/addtext.md), [Doc EmbedFont Function](../1-methods/embedfont.md), [Doc String Property](string.md), [XTagging Open Function](../../xtagging/1-methods/04-open.md), [XTagging Close Function](../../xtagging/1-methods/05-close.md), [FontObject RuneWidths Property](../../../6-abcpdf.objects/fontobject/2-properties/runewidths.md), [FontObject Widths Property](../../../6-abcpdf.objects/fontobject/2-properties/widths.md), [Signature MaxSignatureLength Property](../../../6-abcpdf.objects/signature/2-properties/maxsignaturelength.md), [ArrayAtom FromContentStream Function](../../../7-abcpdf.atoms/arrayatom/1-methods/fromcontentstream.md).
