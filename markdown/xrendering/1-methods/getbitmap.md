# GetBitmap Function

Renders the current area of the current page to a Bitmap.

## Syntax

```csharp
System.Drawing.Bitmap GetBitmap()
```

## Params

| Name | Description |
| --- | --- |
| return | The Bitmap containing the image. |

## Notes

Use this method to render the PDF to a System.Drawing.Bitmap.

The output is a render of the current Doc.Rect of the current Doc.Page.

Any page rotation specified in the PDF page is applied so that the output render is the correct orientation. This may mean that the output width and height are transposed copies of the width and height as specified in the Doc.Rect.

You can then use this Bitmap for drawing to screen or for manipulation using System.Drawing routines.

