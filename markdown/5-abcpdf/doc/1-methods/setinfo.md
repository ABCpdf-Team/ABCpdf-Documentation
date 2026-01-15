# SetInfo Function

Sets information about an object.

## Syntax

```csharp
void SetInfo(int id, string type, string info)
void SetInfo(int id, string type, int info)
void SetInfo(int id, string type, double info)
void SetInfo(int id, string type, DateTime info)<br> void SetInfo(int id, string type, bool info)
```

## Params

| Name | Description |
| --- | --- |
| id | The Object ID of the object to be modified. |
| type | The type of value to insert. |
| info | The value to insert.• The overloads taking integer/floating-point info converts this parameter to the string representation (numbers as used in PDF) in the invariant culture without creating a managed string object.• The overload taking DateTime info converts this parameter to the string representation (PDF date string) so it is mostly used with the :Text object type. |

## Notes

In the same way as you can get information about aspects of a document using the GetInfo method you can modify aspects of the document using the SetInfo method.

Different types of object support different types of properties. For more detailed information see the Object Paths section of this document.

PDF objects are case sensitive so be sure you use the correct case.

## Example

The following shows how to modify the document catalog to ensure 
            that the PDF opens onto the second page rather than the first.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
int pages = doc.GetInfoInt(doc.Root, "Pages");
int page2 = doc.GetInfoInt(pages, "Page 2");
string action = $"[ {page2} 0 R /Fit ]";
doc.SetInfo(doc.Root, "/OpenAction", action);
doc.Save(Server.MapPath("docsetinfo.pdf")); // Windows specific);
```

Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.

