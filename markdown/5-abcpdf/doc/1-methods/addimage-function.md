# AddImage Function

Adds an image to the current page.

## Syntax

```csharp
int AddImage(XImage image)
int AddImage(string path)
int AddImage(byte[] data)
int AddImage(string path, int page)
int AddImage(byte[] data, int page)
int AddImage(int id)
int AddImage(System.Drawing.Bitmap bm)
int AddImage(Doc doc, int page)
int AddImage(Doc doc, int page, XRect src)
```

## Params

| Name | Description |
| --- | --- |
| image | An XImage containing the image to be added to the page. |
| path | A file path, URL or HTML string to be added to the page. |
| data | The raw JPEG data to be added to the page. |
| id | An existing image object ID to be copied to the page again. |
| bm | A .NET Bitmap to be added to the page. |
| doc | A PDF document page to be added to the page. |
| page | The page of the document to be added. |
| src | The source area of the document page to be added. |
| return | The ID of the newly added Image Object. |

## Notes

Adds an image to the current page, returning the ID of the newly added object.

This method selects one of the following methods depending on the image specification:

- AddImageFile
- AddImageData
- AddImageCopy
- AddImageUrl
- AddImageHtml
- AddImageToChain
- AddImageDoc
- AddImageObject
- AddImageBitmap

For new development, call the specific method directly rather than this compatibility wrapper.

## Example

See related examples:

- ABCpdf Text Flow Round Image Example
- XRendering ColorSpace Property
- XRendering DefaultHalftone Property
