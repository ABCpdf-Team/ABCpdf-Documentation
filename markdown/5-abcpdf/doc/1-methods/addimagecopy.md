# AddImageCopy Function

Adds a copy of an existing image in the Doc, to the current page.

## Syntax

```csharp
int AddImageCopy(int id)
```

## Params

| Name | Description |
| --- | --- |
| id | An existing image object ID to be copied to the page again. |
| return | The ID of the newly added Image Object. |

## Notes

Adds a copy of an image which has already been inserted elsewhere in the document.

You can use this facility to add commonly used graphics such as watermarks. The raw image data is inserted only once which means that PDF size is greatly reduced.

This method only works with raster or bitmap images. So your ID must have been obtained from a previous call to AddImageFile, AddImageData or AddImageObject.

- The web page is scaled to fill the current Rect and transformed using the current Transform.

## Example

This example shows how to read an existing PDF document and 
            insert a background image into every page.

```csharp
using var doc = new Doc();
doc.Read(Server.MapPath("../mypics/sample.pdf"));
int count = doc.PageCount;
```

## Results

![sample.pdf - [Page 1]](../../../../images/pdf/sample.pdf.png) — sample.pdf - [Page 1]
![sample.pdf - [Page 2]](../../../../images/pdf/sample.pdf2.png) — sample.pdf - [Page 2]
![sample.pdf - [Page 4]](../../../../images/pdf/sample.pdf4.png) — sample.pdf - [Page 4]
