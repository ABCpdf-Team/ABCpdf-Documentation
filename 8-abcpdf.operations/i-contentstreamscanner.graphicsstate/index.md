# GraphicsState Class

The graphics state as saved and restored using the PDF save and restore graphics state operators.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.ContentStreamScanner.GraphicsState
```

## Methods

| Method | Description |
| --- | --- |
| [GraphicsState](1-methods/01-graphicsstate.md) | Create a new GraphicsState initialized to default values. |
| [Clone](1-methods/clone.md) | Create a deep copy of this graphics state. |

## Properties

| Property | Description |
| --- | --- |
| [CTM](2-properties/01-ctm.md) | The Current Transformation Matrix (CTM). |
| [StrokeColorSpace](2-properties/02-strokecolorspace.md) | The name of the current stroking color space. |
| [FillColorSpace](2-properties/03-fillcolorspace.md) | The name of the current fill color space. |
| [StrokeColor](2-properties/04-strokecolor.md) | The component values defining the stroke color in the current color space. |
| [StrokeColorName](2-properties/05-strokecolorname.md) | The stroke name used when selecting patten color spaces. |
| [FillColor](2-properties/06-fillcolor.md) | The component values defining the fill color in the current color space. |
| [FillColorName](2-properties/07-fillcolorname.md) | The fill name used when selecting patten color spaces. |
| [LineWidth](2-properties/08-linewidth.md) | The line width for stroked paths. |
| [LineCap](2-properties/09-linecap.md) | The line cap for the end of stroked paths. |
| [LineJoin](2-properties/10-linejoin.md) | The line join between segments of stroked paths. |
| [MiterLimit](2-properties/11-miterlimit.md) | The miter defining how sharp mitered joins may be. |
| [DashArray](2-properties/12-dasharray.md) | The dash array defining the lengths of shown and unshown parts of a path. |
| [DashPhase](2-properties/13-dashphase.md) | The length at which the first item in a dashed line starts. |
| [RenderingIntent](2-properties/14-renderingintent.md) | The rendering intent determines how colors may be adapted to better fit with the limitations of the output device or color space. |
| [Flatness](2-properties/15-flatness.md) | The degree of precision to use when drawing curves. |
| [Smoothness](2-properties/16-smoothness.md) | The degree of precision to use when drawing color gradients. |
| [StrokeAdjustment](2-properties/17-strokeadjustment.md) | Whether to apply stroke adjustment or not. |
| [BlendMode](2-properties/18-blendmode.md) | The blend mode to be used when transparency is in use. |
| [SoftMask](2-properties/19-softmask.md) | The soft mask to be used for transparent clipping. |
| [StrokeOverprint](2-properties/20-strokeoverprint.md) | Whether to apply overprint when stroking. |
| [FillOverprint](2-properties/21-filloverprint.md) | Whether to apply overprint when filling. |
| [OverprintMode](2-properties/22-overprintmode.md) | The overprint mode. |
| [BlackGeneration](2-properties/23-blackgeneration.md) | The black generation function or name. |
| [UndercolorRemoval](2-properties/24-undercolorremoval.md) | The undercolor removal function or name. |
| [TransferFunction](2-properties/25-transferfunction.md) | The transfer function - either a function or name. |
| [Halftone](2-properties/26-halftone.md) | A halftone dictionary or stream to be used when converting continuous tone images to monotone. |
| [StrokeAlpha](2-properties/27-strokealpha.md) | A constant alpha value to use when stroking paths. |
| [FillAlpha](2-properties/28-fillalpha.md) | A constant alpha value to use when filling paths. |
| [AlphaIsShape](2-properties/29-alphaisshape.md) | Whether alpha should be used to define shape or opacity. |
| [GlyphWidth](2-properties/30-glyphwidth.md) | The width of a glyph. |
| [GlyphWidthBounds](2-properties/31-glyphwidthbounds.md) | The width and bounds of a glyph. |
| [TextCharacterSpacing](2-properties/32-textcharacterspacing.md) | The spacing between adjacent characters as expressed in unscaled text space units. |
| [TextWordSpacing](2-properties/33-textwordspacing.md) | The spacing between adjacent words as expressed in unscaled text space units. |
| [TextHorizontalScaling](2-properties/34-texthorizontalscaling.md) | A factor to be used to horizontally scale text. |
| [TextLeading](2-properties/35-textleading.md) | The distance between lines as expressed in unscaled text units. |
| [TextFont](2-properties/36-textfont.md) | The name of the current font. |
| [TextFontSize](2-properties/37-textfontsize.md) | The scale factor for the current font. |
| [TextRenderingMode](2-properties/38-textrenderingmode.md) | The text rendering mode for text. |
| [TextRise](2-properties/39-textrise.md) | The amount by which text should be shifted up as expressed in unscaled text units. |
| [TextKnockout](2-properties/40-textknockout.md) | Whether text knockout should be applied. |
