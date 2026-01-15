# Delete Function

Deletes an object previously added to the document.

## Syntax

```csharp
void Delete(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be deleted. |

## Notes

Use this method to delete an object previously added to the document.

Deletion may be applied to pages to remove them from the document. For example to delete the current page you might use the following code: [C#] theDoc.Delete(theDoc.Page);

[Visual Basic] theDoc.Delete(theDoc.Page)

However if you are deleting multiple pages you will probably find it more efficient to use the RemapPages method. as this is more optimized for moving and removing pages.

## Example

The following code snippet illustrates how one might add an image 
            and then delete it if the image color space is CMYK.

```csharp
using var doc = new Doc();
string path = Server.MapPath("../mypics/mypic.jpg");
int id1 = doc.AddImageFile(path, 1);
int id2 = doc.GetInfoInt(id1, "XObject");
int comps = doc.GetInfoInt(id2, "Components");
if (comps == 4) doc.Delete(id1);
doc.Save(Server.MapPath("docdelete.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

## Results

![docdelete.pdf ](../../../../images/pdf/docdelete.pdf.png) — docdelete.pdf 
