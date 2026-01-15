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

Adds a raw PDF object by text. Useful for objects defined in the PDF spec but not directly supported by ABCpdf.

- Text must be valid PDF syntax; escape special characters in strings per the PDF spec.
- The object must be referenced from somewhere in the document; orphaned objects are removed on save.
- For metadata, prefer `Catalog.Metadata` for PDF 2.0 compliance; `Trailer.Info` remains for legacy compatibility.

## Example

Add/update `Trailer.Info` entries and remove XML metadata for consistency, then save.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf")); // Windows specific
if (doc.GetInfo(-1, "/Info") == "")
    doc.SetInfo(-1, "/Info:Ref", doc.AddObject("<< >>").ToString());
doc.SetInfo(-1, "/Info*/Author:Text", "Arthur Dent");
doc.SetInfo(-1, "/Info*/Title:Text", "Musings on Life");
doc.SetInfo(-1, "/Info*/Subject:Text", "Philosophy");
doc.SetInfo(doc.Root, "/Metadata:Del", "");
doc.Save(Server.MapPath("docaddobject.pdf")); // Windows specific
```
