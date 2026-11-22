# Root Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `int` | 0 | Yes | The root catalog object. |

## Notes

This property holds the ID of the catalog object.

The catalog is the root of the whole PDF document. It contains information on the root Pages object and the Outline object.

For dynamically created documents the root of the document is always one. However documents read from existing PDF files may use different root IDs.

## Example

The following code snippet illustrates how one might find some information about a PDF document.

```csharp
using var doc = new Doc();
doc.Read("../mypics/mydoc.pdf");
string vers = doc.GetInfo(doc.Root, "Version");
string names = doc.GetInfo(doc.Root, "/Names");
string pages = doc.GetInfo(doc.Root, "pages");
string outlines = doc.GetInfo(doc.Root, "outlines");
Response.Write($"Version {vers}<br>");
Response.Write($"Names {names}<br>");
Response.Write($"Pages ID {pages}<br>");
Response.Write($"Outlines ID {outlines}<br>");
```

This might result in the following output.

```
Version /1.4
Names 12 0 R
Pages ID 618
Outlines ID 2169
```
