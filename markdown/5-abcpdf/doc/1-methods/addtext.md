# AddText Function

Adds a block of single styled text to the current page.

## Syntax

```csharp
int AddText(string text)
```

## Params

| Name | Description |
| --- | --- |
| text | The text to be added to the page. |
| return | The Object ID of the newly added Text Object. |

## Notes

Adds a block of single styled text to the current page.

For adding multi-styled text or for chaining text from one page to another you should use the AddTextStyled method which is used for adding styled text.

The text is in the current style, size and color and starts at the location specified in the current position. If the text is long it will will wrap and extend downwards until it fills the current rectangle. Text positioning in the rectangle is determined by the horizontal and vertical positioning.

You can chain together multiple text blocks so that text flows from one to the next. To do this you need to first add a block of text using AddText. Then add multiple new text blocks using AddTextStyled each time passing in the ID obtained from the previous call after adjusting the target location (such as the rectangle or the page).

The AddText function returns the Object ID of the newly added Text Object. If no text could be added then zero is returned. This will happen if a zero length string was supplied or if the rectangle was too small for even one character to be displayed.

Typically you will get a return value of zero if your text was too large to fit in your Rect or if the Pos was at the end of the Rect. So if you are expecting text to be displayed and are seeing a return value of zero, check your text size, check your Rect is where you think it is by framing it using FrameRect and ensure your Pos is set at the top left of the Rect.

Text is drawn word-wrapped within the current rectangle with the first character at the location specified by the Pos property. Normally the Pos property reflects the top left position of the current rectangle. However if you need to alter the position at which text drawing starts you can modify the Pos property after changing the Rect. When the text has been drawn the Pos will be updated to reflect the next text insertion point.

Character positioning is specified from the top left of the character. Please see Pos for details on positioning when using vertical fonts. The FontSize determines the total line height and the character baseline is 80% of the way down from the top of the line.

## Example

```csharp
using var doc = new Doc();
doc.Page = doc.AddPage();
doc.FontSize = 48;
int font1 = doc.AddFont("Times-Roman");
int font2 = doc.AddFont("Times-Bold");
doc.Font = font1;
doc.AddText("Gallia est omnis ");
doc.Font = font2;
doc.AddText("tertiam Galli appellantur ");
doc.Font = font1;
doc.AddText("divisa in partes tres, ");
doc.Font = font2;
doc.AddText("quarum unam incolunt ");
doc.Font = font1;
doc.AddText("Belgae, aliam Aquitani. ");
doc.Font = font2;
doc.AddText("tertiam Galli appellantur");
doc.Save(Server.MapPath("docaddtext.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docaddtext.pdf ](../../../../images/pdf/docaddtext.pdf.png) — docaddtext.pdf 
