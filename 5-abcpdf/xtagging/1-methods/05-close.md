# Close Function

Closes a sequence of tags.

## Syntax

[C#]

```csharp
<a href="../default.htm">Tag</a> Close(<a href="../default.htm">Tag</a> tag)<a href="../default.htm">Tag</a> Close(params string[] types)
```

## Params

| **Name** | **Description** |
| --- | --- |
| tag | The tag to be closed. |
| types | The types of tags to be closed in sequence |
| return | The last tag closed. |

## Notes

Closes a sequence of tags.

Ensure the Doc.Page is set correctly when you close a tag. If you move to a new page and then close a tag you will end up with a tag that includes the page even though there may not be any tagged content on it.

## Example

This example shows how to add tagged content to a document which is already tagged.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../Rez/spacex_nasa_dragon.pdf");
doc.Font = doc.EmbedFont("Arial", LanguageType.Unicode, false, true, false);
doc.TextStyle.Size = 18;
doc.Rect.SetRect(0, 0, doc.MediaBox.Width, 100);
doc.TextStyle.HPos = 0.5;
doc.TextStyle.Bold = true;
doc.Color.SetRgb(200, 00, 0);
doc.Tag.Open("P", "Span");
doc.AddText("This is a NASA document\r\n");
doc.Tag.CloseOpen("Span");
doc.AddText("National Aeronautics and Space Administration");
doc.Tag.Close("Span", "P");
doc.Save("addtagstotaggeddoc.pdf");
```

![](../../../images/pdf/addtagstotaggeddoc.pdf.png)
addtagstotaggeddoc.pdf

Also see example code in:

* [ABCpdf Tagged Text Example](4-examples/02-texttagged.md)
* [XTagging Open Function](04-open.md)
* [XTextStyle AutoTag Property](xtextstyle/2-properties/autotag.md).
