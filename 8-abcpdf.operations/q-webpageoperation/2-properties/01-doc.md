# Doc Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Doc` | n/a | No | The Doc object on which to operate. |

## Notes

The Doc object on which to operate.

On creation of the WebPageOperation this property will be populated with a new Doc object.

Set the Doc.MediaBox to select a page size. Select a Doc.Rect to set the content area. Items outside the Doc.Rect become margins and can be used for [headers](04-headerhtml.md) and [footers](05-footerhtml.md).

You can set Doc.HtmlOptions properties to specify features you wish to use. For calls like [GetTagIDs](../../../5-abcpdf/xhtmloptions/1-methods/gettagids.md) or [GetTagRects](../../../5-abcpdf/xhtmloptions/1-methods/gettagrects.md) you can pass the relevant Doc.Page to select the specific page you require.

## Example

The following code creates a PDF document from HTML and outlines any tagged areas.

```csharp
var op = new WebPageOperation();
using (op.Doc) {
  op.Doc.Rect.Inset(72, 72);
  op.Doc.HtmlOptions.AddTags = true;
  op.Doc.HtmlOptions.RetryCount = 0;
  op.Tagged = true;
  op.Outline = true;
  string template = "<html><body><div style=\"width:100%;font-size:14pt;text-align:center;\">*</div></body></html>";
  op.HeaderHtml = template.Replace("*", "Commentarii de Bello Gallico");
  op.FooterHtml = template.Replace("*", "<span class=pageNumber></span> of <span class=totalPages></span>");
  op.ReadUrl(GetUri("../Rez/commentarii.htm"));
  var tagIDs = op.Doc.HtmlOptions.GetTagIDs(op.Doc.Page);
  var tagRects = op.Doc.HtmlOptions.GetTagRects(op.Doc.Page);
  for (int i = 0; i < tagIDs.Length; ++i) {
    op.Doc.Rect.String = tagRects[i].String;
    op.Doc.FrameRect();
    op.Doc.FontSize = (int)(0.9 * op.Doc.Rect.Height);
    op.Doc.AddText(tagIDs[i]);
  }
  op.Doc.Save("webpageop.pdf");
}
```
