# String Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `string` | "0 0 0 0" | No | The rect as a string. |

## Notes

Allows you access to the rect as a string.

When working in standard PDF coordinates the format of the string is "left bottom right top". When working with [top-down](../../doc/2-properties/topdown.md) coordinates the format of the string is "left top right bottom".

You can use the following page sizes as shortcuts when assigning a string value to an XRect:

| Paper Size | Width in Points | Height in Points |
| :---: | :---: | :---: |
| A3 | 842 | 1190 |
| A4 | 595 | 842 |
| A5 | 420 | 595 |
| B4 | 729 | 1032 |
| B5 | 516 | 729 |
| Letter | 612 | 792 |
| Legal | 612 | 1008 |
| Tabloid | 792 | 1224 |
| Ledger | 1224 | 792 |
| Statement | 396 | 612 |
| Executive | 540 | 720 |
| Folio | 612 | 936 |
| Quarto | 610 | 780 |
| 10x14 | 720 | 1008 |

## Example

The following code.

```csharp
var rc = new XRect();
rc.String = "10 10 200 100";
Response.Write($"Width = {rc.Width}");
Response.Write("<br>");
Response.Write($"Height = {rc.Height}");
```

Produces the following output.

```
Width = 190
Height = 90
```

Also see example code in: [ABCpdf Text Flow Round Image Example](../../../4-examples/02-textflow2.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [ABCpdf PDF Rendering Example](../../../4-examples/19-rendering.md), [Doc AddImageDoc Function](../../doc/1-methods/addimagedoc.md), [Doc AddImageFile Function](../../doc/1-methods/addimagefile.md), [Doc AddImageObject Function](../../doc/1-methods/addimageobject.md), [Doc MediaBox Property](../../doc/2-properties/mediabox.md), [Doc Rect Property](../../doc/2-properties/rect.md), [XHtmlOptions GetTagRects Function](../../xhtmloptions/1-methods/gettagrects.md), [XImage Selection Property](../../ximage/2-properties/selection.md), [XRect Inset Function](../1-methods/inset.md), [XRect Magnify Function](../1-methods/magnify.md), [XRect Move Function](../1-methods/move.md), [XRect Position Function](../1-methods/position.md), [XRect Resize Function](../1-methods/resize.md), [XRect SetRect Function](../1-methods/setrect.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XRendering ColorSpace Property](../../xrendering/2-properties/colorspace.md), [XRendering DefaultHalftone Property](../../xrendering/2-properties/defaulthalftone.md), [XRendering IccCmyk Property](../../xrendering/2-properties/icccmyk.md), [XRendering SaveCompression Property](../../xrendering/2-properties/savecompression.md), [XTransform Invert Function](../../xtransform/1-methods/invert.md), [FontObject RuneWidths Property](../../../6-abcpdf.objects/fontobject/2-properties/runewidths.md), [FontObject Widths Property](../../../6-abcpdf.objects/fontobject/2-properties/widths.md), [Page GetBitmap Function](../../../6-abcpdf.objects/page/1-methods/getbitmap.md), [TextOperation Group Function](../../../8-abcpdf.operations/8-textoperation/1-methods/group.md), [WebPageOperation Doc Property](../../../8-abcpdf.operations/q-webpageoperation/2-properties/01-doc.md).
