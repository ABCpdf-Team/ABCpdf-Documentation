# Pos Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`XPoint`](../../xpoint/index.md) | The top left of the current rectangle. | No | The current drawing position. |

## Notes

This property determines the current drawing position.

This is used by the [AddText](../1-methods/addtext.md) and [AddTextStyled](../1-methods/addtextstyled.md) methods. Text is placed within the [Rect](rect.md) at the starting point specified by the Pos.

When you change the [Page](page.md) or [Rect](rect.md) properties the Pos is automatically reset to the top left of the current Rect.

In general use, the Pos specifies the top left corner of characters and text is positioned in rows from left to right and top to bottom. After adding text using the AddText method, the Pos is updated to point to the next text insertion position - at the top of and just after the last drawn character.

However East Asian scripts may also be positioned top to bottom, right to left. For this reason fonts may be specified as vertical - indicated using the [FontObject.WritingMode](../../../6-abcpdf.objects/fontobject/2-properties/writingmode.md) property. In this situation the value of the Pos is not updated after calling AddText.

This is the case because ABCpdf applies vertical text flow via an internal transformation applied to Pos. All horizontal positioning settings are applied to vertical coordinates and vice versa. The transformation rotates the coordinate system by 90 degrees clock-wise and maps the top-left corner of the [Rect](rect.md) to the top-right corner of the [Rect](rect.md). Hence the default initial value of Pos specifies that vertical text should start at the top-right corner of the [Rect](rect.md). This is similar to Windows processing of text using an East Asian font whose name is prefixed with @ and applying the transformation only at the last step.

For this reason note that the effects of [XTextStyle.CharSpacing](../../xtextstyle/2-properties/charspacing.md) and [XTextStyle.WordSpacing](../../xtextstyle/2-properties/wordspacing.md) depend on the writing mode.

Please note that text in vertical fonts and text in horizontal fonts do not mix well, so stick to one type for each text area you create.

## Example

The following code creates a PDF document with text positioned at a number of different points within it.

```csharp
using var doc = new Doc();
doc.FontSize = 48;
for (int i = 1; i <= 8; i++) {
  doc.Pos.X = i * 40;
  doc.Pos.Y = i * 80;
  doc.AddText($"Pos = {doc.Pos}");
}
doc.Save("docpos.pdf");
```

![docpos.pdf](../../../images/pdf/docpos.pdf.png)  
docpos.pdf

Also see example code in: [ABCpdf Tagged Text Example](../../../4-examples/02-texttagged.md), [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md), [XPoint Point Property](../../xpoint/2-properties/point.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XTransform Invert Function](../../xtransform/1-methods/invert.md), [XTransform Reset Function](../../xtransform/1-methods/reset.md), [XTransform Rotate Function](../../xtransform/1-methods/rotate.md), [FontObject RuneWidths Property](../../../6-abcpdf.objects/fontobject/2-properties/runewidths.md), [FontObject Widths Property](../../../6-abcpdf.objects/fontobject/2-properties/widths.md), [Signature MaxSignatureLength Property](../../../6-abcpdf.objects/signature/2-properties/maxsignaturelength.md).
