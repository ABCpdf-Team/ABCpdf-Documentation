# AddImageCopy Function

Adds a copy of an existing image in the Doc, to the current page.

## Syntax

[C#]

```csharp
int AddImageCopy(int id)
```

## Params

| **Name** | **Description** |
| --- | --- |
| id | An existing image object ID to be copied to the page again. |
| return | The ID of the newly added Image Object. |

## Notes

Adds a copy of an image which has already been inserted elsewhere in the document.

You can use this facility to add commonly used graphics such as watermarks. The raw image data is inserted only once which means that PDF size is greatly reduced.

This method only works with raster or bitmap images. So your ID must have been obtained from a previous call to [AddImageFile](addimagefile.md) [AddImageData](addimagedata.md) or [AddImageObject](addimageobject.md).

The image is scaled to fill the current [Rect](2-properties/rect.md). It is transformed using the current [Transform](xtransform/default.md).

## Example

This example shows how to read an existing PDF document and insert a background image (for example a watermark) into every page. We start by reading our template PDF document and finding out core information we will need to reference each page.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
int count = doc.PageCount;
```

![](../../../images/pdf/sample.pdf.png)
sample.pdf - [Page 1]

