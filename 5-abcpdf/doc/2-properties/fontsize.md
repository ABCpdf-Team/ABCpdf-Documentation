# FontSize Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 10 | No | The current text size. |

## Notes

The line height for drawing text.

This property determines the size of text that is added to the document using the [AddText](../1-methods/addtext.md) and [AddTextStyled](../1-methods/addtextstyled.md) methods.

The font size is measured in the current [Units](units.md).

You should prefer use of the [XTextStyle.Size](../../xtextstyle/2-properties/size.md) property, to which the FontSize property is simply an integer accessor. Assigning a value to the FontSize is exactly equivalent to assigning it to the [XTextStyle.Size](../../xtextstyle/2-properties/size.md). Getting a value from this property is exactly equivalent to the following.

```csharp
int n = (int)(doc.TextStyle.Size + 0.5);
```

## Example

The following example adds two blocks of styled text to a document. The first block is in 96 point type and the second is in 192 point type.

```csharp
using var doc = new Doc();
doc.FontSize = 96;
doc.AddText("Small ");
doc.FontSize = 192;
doc.AddText("Big");
doc.Save("docfontsize.pdf");
```

![docfontsize.pdf](../../../images/pdf/docfontsize.pdf.png)  
docfontsize.pdf

Also see example code in: [ABCpdf Text Flow Example](../../../4-examples/02-textflow.md), [ABCpdf Text Flow Round Image Example](../../../4-examples/02-textflow2.md), [ABCpdf Multistyle Example](../../../4-examples/03-multistyled.md), [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf Headers and Footers Example](../../../4-examples/06-headers.md), [ABCpdf Landscape Example](../../../4-examples/08-landscape.md), [ABCpdf Small Table Example](../../../4-examples/09-table1.md), [ABCpdf Large Table Example](../../../4-examples/10-table2.md), [ABCpdf Unicode Example](../../../4-examples/12-unicode.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md), [ABCpdf eForm FDF Example](../../../4-examples/16-eformfdf.md), [ABCpdf Advanced Graphics Example](../../../4-examples/17-advancedgraphics.md), [ABCpdf Fields, Markup and Movies Example](../../../4-examples/18-annotations.md), [Doc AddBookmark Function](../1-methods/addbookmark.md), [Doc AddColorSpaceFile Function](../1-methods/addcolorspacefile.md), [Doc AddColorSpaceSpot Function](../1-methods/addcolorspacespot.md), [Doc AddFont Function](../1-methods/addfont.md), [Doc AddPage Function](../1-methods/addpage.md), [Doc AddText Function](../1-methods/addtext.md), [Doc AddTextStyled Function](../1-methods/addtextstyled.md), [Doc Append Function](../1-methods/append.md), [Doc EmbedFont Function](../1-methods/embedfont.md), [Doc Read Function](../1-methods/read.md), [Doc RemapPages Method](../1-methods/remappages.md), [Doc Save Function](../1-methods/save.md), [Doc Encryption Property](encryption.md), [Doc Font Property](font.md), [Doc Page Property](page.md), [Doc Pos Property](pos.md), [Doc String Property](string.md), [Doc TopDown Property](topdown.md), [Doc Transform Property](transform.md), [XColor Alpha Property](../../xcolor/2-properties/alpha.md), [XEncryption SetCryptMethods Function](../../xencryption/1-methods/setcryptmethods.md), [XHtmlOptions GetTagRects Function](../../xhtmloptions/1-methods/gettagrects.md), [XHtmlOptions HtmlCallback Property](../../xhtmloptions/2-properties/htmlcallback.md), [XPoint Point Property](../../xpoint/2-properties/point.md), [XRect Rectangle Property](../../xrect/2-properties/rectangle.md), [XRendering AntiAliasPolygons Property](../../xrendering/2-properties/antialiaspolygons.md), [XRendering AntiAliasText Property](../../xrendering/2-properties/antialiastext.md), [XRendering IccCmyk Property](../../xrendering/2-properties/icccmyk.md), [XRendering SaveAlpha Property](../../xrendering/2-properties/savealpha.md), [XTextStyle HPos Property](../../xtextstyle/2-properties/hpos.md), [XTextStyle VPos Property](../../xtextstyle/2-properties/vpos.md), [XTransform Invert Function](../../xtransform/1-methods/invert.md), [XTransform Magnify Function](../../xtransform/1-methods/magnify.md), [XTransform Reset Function](../../xtransform/1-methods/reset.md), [XTransform Rotate Function](../../xtransform/1-methods/rotate.md), [XTransform AngleUnit Property](../../xtransform/2-properties/angleunit.md), [FontObject RuneWidths Property](../../../6-abcpdf.objects/fontobject/2-properties/runewidths.md), [FontObject Widths Property](../../../6-abcpdf.objects/fontobject/2-properties/widths.md), [Page VectorizeText Function](../../../6-abcpdf.objects/page/1-methods/vectorizetext.md), [Signature MaxSignatureLength Property](../../../6-abcpdf.objects/signature/2-properties/maxsignaturelength.md), [XpsImportOperation Import Function](../../../8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md), [SwfImportOperation Import Function](../../../8-abcpdf.operations/5-swfimportoperation/1-methods/import.md), [WebPageOperation Doc Property](../../../8-abcpdf.operations/q-webpageoperation/2-properties/01-doc.md), [CustomFont Embed Function](../../../8-abcpdf.operations/r-customfont/1-methods/02-embed.md).
