# AddObject Function

Adds a native PDF object to the document.

## Syntax

[C#]

```csharp
int AddObject(string obj)
```

## Params

| **Name** | **Description** |
| --- | --- |
| obj | The raw native object to be added. |
| return | The Object ID of the newly added Object. |

## Notes

You will not normally need to use this feature. However it can be useful if you wish to add objects which are defined in the PDF specification but not supported by ABCpdf .NET.

Be aware that the text you pass this function must be in native PDF format. This means that unusual characters in text strings must be appropriately escaped. For full details of the way that PDF objects are represented you should see the Adobe PDF Specification.

Your newly added object needs to be referenced from somewhere in the PDF document. If you do not reference your object it will be orphaned and will be deleted when the document is saved.

## Example

The following code adds a document information section to an existing PDF document. First it adds an empty dictionary and references it from the document trailer. Then it adds an Author, Title and Subject before saving. There are multiple places that metadata can be put into a PDF. The most commonly used are the Info entry of the Trailer and the Metadata entry of the Catalog. The Info entry is the older and most widely recognized location. The Metadata entry is a more recent XML based store. It is important that information within these stores is consistent. If the information is inconsistent then you'll find that the metadata reported by different applications is different. To try and reduce the amount of confusion caused by multiple metadata entries, PDF 2.0 deprecated all Info entries apart from the CreationDate and ModDate. To be PDF 2.0 compliant you should put all metadata into the Metadata entry rather than the Info one. The code example below will ensure backwards compatibility with legacy applications, but in general for metadata, you should be using the kind of code you see in the [Catalog.Metadata](6-abcpdf.objects/catalog/2-properties/metadata.md) example. In this example, to ensure that the data is consistent we're going to delete any XML Metadata entry that may be present. That way we force applications to report the Info store. However it wouldn't be a difficult matter to load up any XML in the Metadata entry and modify that as well as the Info entry. For details see the [Catalog.Metadata](6-abcpdf.objects/catalog/2-properties/metadata.md) example.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
if (doc.GetInfo(-1, "/Info") == "")
  doc.SetInfo(-1, "/Info:Ref", doc.AddObject("<< >>").ToString());
doc.SetInfo(-1, "/Info*/Author:Text", "Arthur Dent");
doc.SetInfo(-1, "/Info*/Title:Text", "Musings on Life");
doc.SetInfo(-1, "/Info*/Subject:Text", "Philosophy");
doc.SetInfo(doc.Root, "/Metadata:Del", "");
doc.Save("docaddobject.pdf");
```

