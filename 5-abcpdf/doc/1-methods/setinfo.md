# SetInfo Function

Sets information about an object.

## Syntax

[C#]

```csharp
void SetInfo(int id, string type, string info)void SetInfo(int id, string type, int info)void SetInfo(int id, string type, long info)void SetInfo(int id, string type, double info)void SetInfo(int id, string type, DateTime info)void SetInfo(int id, string type, bool info)
```

## Params

| **Name** | **Description** |
| --- | --- |
| id | The Object ID of the object to be modified. |
| type | The type of value to insert. |
| info | The value to insert.• The overloads taking integer/floating-point info converts this parameter to the string representation (numbers as used in PDF) in the invariant culture without creating a managed string object.• The overload taking DateTime info converts this parameter to the string representation (PDF date string) so it is mostly used with the :Text object type. |

## Notes

In the same way as you can get information about aspects of a document using the [GetInfo](getinfo.md) method you can modify aspects of the document using the SetInfo method.

Different types of object support different types of properties. For more detailed information see the [Object Paths](3-concepts/2-objectpaths.md) section of this document.

PDF objects are case sensitive so be sure you use the correct case.

## Example

The following shows how to modify the document catalog to ensure that the PDF opens onto the second page rather than the first.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
int pages = doc.GetInfoInt(doc.Root, "Pages");
int page2 = doc.GetInfoInt(pages, "Page 2");
string action = $"[ {page2} 0 R /Fit ]";
doc.SetInfo(doc.Root, "/OpenAction", action);
doc.Save("docsetinfo.pdf");
```

Also see example code in:

* [ABCpdf Landscape Example](4-examples/08-landscape.md)
* [ABCpdf Fields, Markup and Movies Example](4-examples/18-annotations.md)
* [Doc AddObject Function](addobject.md)
* [Doc ColorSpace Property](2-properties/colorspace.md)
* [FileSpecification FileSpecification Function](6-abcpdf.objects/filespecification/1-methods/filespecification.md)
* [OpAtom Find Function](7-abcpdf.atoms/opatom/1-methods/find.md)
* [XpsImportOperation Import Function](8-abcpdf.operations/4-xpsimportoperation/1-methods/import.md).
