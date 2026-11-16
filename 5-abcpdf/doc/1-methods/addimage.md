# AddImage Function

Adds an image to the current page.

## Syntax

[C#]

```csharp
int AddImage(XImage image)int AddImage(string path)int AddImage(byte[] data)int AddImage(string path, int frame)int AddImage(byte[] data, int frame)int AddImage(int id)int AddImage(System.Drawing.Bitmap bitmap)int AddImage(Doc doc, int page)int AddImage(Doc doc, int page, XRect rect)
```

## Params

| **Name** | **Description** |
| --- | --- |
| image | An XImage containing the image to be added to the page. |
| path | A file path, URL or html string to be added to the page. |
| data | The raw JPEG data to be added to the page. |
| id | An existing image object ID to be copied to the page again. |
| bitmap | A .NET Bitmap to be added to the page. |
| doc | A PDF document page to be added to the page. |
| page | The page of the document to be added. |
| rect | The source area of the document page to be added. |
| frame | The page or frame of the document or image to be added. |
| return | The ID of the newly added Image Object. |

## Notes

Adds an image to the current page returning the ID of the newly added object.

This method attempts to make a sensible decision as to which of the following methods to call dependent on the content of the ImageSpec.

* AddImageFile
* AddImageData
* AddImageCopy
* AddImageUrl
* AddImageHtml
* AddImageToChain
* AddImageDoc
* AddImageObject
* AddImageBitmap

This function is provided for backwards compatibility purposes. You should call the appropriate method directly rather than working via this method.

## Example

Also see example code in:

* [ABCpdf Text Flow Round Image Example](4-examples/02-textflow2.md)
* [XRendering ColorSpace Property](xrendering/2-properties/colorspace.md)
* [XRendering DefaultHalftone Property](xrendering/2-properties/defaulthalftone.md).
