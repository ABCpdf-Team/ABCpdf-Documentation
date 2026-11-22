# Delete Function

Deletes an object previously added to the document.

## Syntax

```csharp
void Delete(int id)
```

## Params

| Name | Description |
| :---: | --- |
| id | The Object ID of the object to be deleted. |

## Notes

Use this method to delete an object previously added to the document.

Deletion may be applied to pages to remove them from the document. For example to delete the current page you might use the following code:

```csharp
theDoc.Delete(theDoc.Page);
```

However if you are deleting multiple pages you will probably find it more efficient to use the [RemapPages](remappages.md) method. as this is more optimized for moving and removing pages.

## Example

The following code snippet illustrates how one might add an image and then delete it if the image color space is CMYK.

```csharp
using var doc = new Doc();
string path = "../mypics/mypic.jpg";
int id1 = doc.AddImageFile(path, 1);
int id2 = doc.GetInfoInt(id1, "XObject");
int comps = doc.GetInfoInt(id2, "Components");
if (comps == 4) doc.Delete(id1);
doc.Save("docdelete.pdf");
```

![docdelete.pdf](../../../images/pdf/docdelete.pdf.png)  
docdelete.pdf

Also see example code in: [ABCpdf Deletion Example](../../../4-examples/05-deletion.md), [ABCpdf eForm Placeholder Example](../../../4-examples/15-eform2.md).
