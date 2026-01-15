# AddObject Function

Adds a native PDF object to the document.

## Syntax

```csharp
int AddObject(string text)
```

## Params

| Name | Description |
| --- | --- |
| text | The raw native object to be added. |
| return | The Object ID of the newly added Object. |

## Notes

You will not normally need to use this feature. However it can be useful if you wish to add objects which are defined in the PDF specification but not supported by ABCpdf .NET.

Be aware that the text you pass this function must be in native PDF format. This means that unusual characters in text strings must be appropriately escaped. For full details of the way that PDF objects are represented you should see the Adobe PDF Specification.

Your newly added object needs to be referenced from somewhere in the PDF document. If you do not reference your object it will be orphaned and will be deleted when the document is saved.

## Example

The following code adds a document information section to an 
            existing PDF document. First it adds an empty dictionary and 
            references it from the document trailer. Then it adds an Author, 
            Title and Subject before saving.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
if (doc.GetInfo(-1, "/Info") == "")
  doc.SetInfo(-1, "/Info:Ref", doc.AddObject("<< >>").ToString());
doc.SetInfo(-1, "/Info*/Author:Text", "Arthur Dent");
doc.SetInfo(-1, "/Info*/Title:Text", "Musings on Life");
doc.SetInfo(-1, "/Info*/Subject:Text", "Philosophy");
doc.SetInfo(doc.Root, "/Metadata:Del", "");
doc.Save(Server.MapPath("docaddobject.pdf")); // Windows specific);
```

