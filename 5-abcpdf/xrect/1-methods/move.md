# Move Function

Translate the rectangle.

## Syntax

```csharp
void Move(double x, double y)
```

## Params

| Name | Description |
| :---: | --- |
| x | The horizontal distance to move the rectangle. |
| y | The vertical distance to move the rectangle. |

## Notes

Moves the rectangle maintaining the width and height.

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "20 20 220 120";
Response.Write($"Rect = {rc}");
rc.Move(50, 50);
Response.Write("<br>");
Response.Write($"Move = {rc}");
```

Produces the following output.

```
Rect = 20 20 220 120
Move = 70 70 270 170
```

Also see example code in: [Doc AddColorSpaceSpot Function](../../doc/1-methods/addcolorspacespot.md), [XColor Alpha Property](../../xcolor/2-properties/alpha.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XTextStyle CharSpacing Property](../../xtextstyle/2-properties/charspacing.md), [XTextStyle HPos Property](../../xtextstyle/2-properties/hpos.md), [XTextStyle Justification Property](../../xtextstyle/2-properties/justification.md), [XTextStyle LeftMargin Property](../../xtextstyle/2-properties/leftmargin.md), [XTextStyle LineSpacing Property](../../xtextstyle/2-properties/linespacing.md), [XTextStyle Outline Property](../../xtextstyle/2-properties/outline.md), [XTextStyle ParaSpacing Property](../../xtextstyle/2-properties/paraspacing.md), [XTextStyle VPos Property](../../xtextstyle/2-properties/vpos.md), [XTextStyle WordSpacing Property](../../xtextstyle/2-properties/wordspacing.md), [XTransform Magnify Function](../../xtransform/1-methods/magnify.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [PixMap SetAlpha Function](../../../6-abcpdf.objects/pixmap/1-methods/setalpha.md), [PixMap ToGrayscale Function](../../../6-abcpdf.objects/pixmap/1-methods/tograyscale.md).
