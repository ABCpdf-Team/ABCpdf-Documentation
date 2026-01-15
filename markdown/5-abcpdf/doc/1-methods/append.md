# Append Function

Appends a PDF to the end of the document.

## Syntax

```csharp
void Append(Doc doc)
```

## Params

| Name | Description |
| --- | --- |
| doc | The document to add to the end of this one. |

## Notes

Use this method to append one PDF to the end of another one.

Individual pages from one PDF can be drawn into another using the AddImageDoc method.

If you are inserting a number of pages it is much faster to use the Append method than to draw pages individually. It also has the advantage of maintaining other information such as bookmarks.

If you are inserting pages that contain form fields, you may want to call MakeFieldsUnique to avoid sharing fields across pages.

The SaveOptions.Refactor setting determines whether duplicate and  redundant objects are eliminated. The SaveOptions.Preflight setting determines whether objects in the destination document are validated before this operation is performed.

Unless the document and the pages are big in terms of memory use and have many common objects, it is faster to disable SaveOptions.Refactor and SaveOptions.Preflight for adding the pages and enable them for saving the document.

- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details. - The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare. - If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.

## Example

The following code snippet illustrates how one might join two PDF 
            documents together.

```csharp
using var doc1 = new Doc();
doc1.FontSize = 192;
doc1.TextStyle.HPos = 0.5;
doc1.TextStyle.VPos = 0.5;
doc1.AddText("Hello");
using var doc2 = new Doc();
doc2.FontSize = 192;
doc2.TextStyle.HPos = 0.5;
doc2.TextStyle.VPos = 0.5;
doc2.AddText("World");
doc1.Append(doc2);
doc1.Save(Server.MapPath("docjoin.pdf"));
```

## Results

![docjoin.pdf [Page 1]](../../../../images/pdf/docjoin.pdf.png) — docjoin.pdf [Page 1]
![docjoin.pdf [Page 2]](../../../../images/pdf/docjoin.pdf2.png) — docjoin.pdf [Page 2]
