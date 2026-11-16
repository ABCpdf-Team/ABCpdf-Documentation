# TextMarkupAnnotation Function

Add text markup annotation to the current rect of the current page of the doc.

## Syntax

[C#]

```csharp
<a href="../default.htm">TextMarkupAnnotation</a>(Doc doc, string quadPoints, TextMarkupType markupType, XColor color)<a href="../default.htm">TextMarkupAnnotation</a>(Doc doc, int id, TextMarkupType markupType, XColor color, TextMarkupAdjust adjust = TextMarkupAdjust.None)<a href="../default.htm">TextMarkupAnnotation</a>(Doc doc, TextMarkupType markupType, XColor color, TextMarkupAdjust adjust = TextMarkupAdjust.None)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | Doc |
| quadPoints | Quad points of the text |
| markupType | Type of the markup annotation |
| color | Markup color |
| id | ID of the Text object |
| adjust | The markup adjustment to apply. |

## Notes

Add text markup annotation to the current rect of the current page of the doc.

The TextMarkupType enumeration may take the following values:

* Underline - Underlined text.
* Highlight - Highlighted text.
* StrikeOut - Struck through text.
* Squiggly - Squiggly underlined text.

If quad points are provided, the annotation rectangle will be set to the smallest area that contains all these points. If a text object ID is provided, the annotation rectangle will be set to match the area of the text object. If neither is provided, the annotation rectangle will be set to match the current Doc.Rect.

A quad comprises eight numbers specifying the corners of a quadrilateral in counterclockwise order. Multiple quadrilaterals can be specified, so the number of items in the list is always a multiple of eight. For the purposes of underlines the orientation is determined by a line drawn between the first two points.

These types of annotations do not work perfectly if the page is rotated and the Annotation NoRotate flag is set. Acrobat does not display such annotations the way they are supposed to be displayed. One can work around this issue but only at the cost of having them display incorrectly in other viewers such as Chrome. However to allow control over the behavior we supply the TextMarkupAdjust option.

Generally when working with rotated pages you will want RectNoRotate | Adobe for Acrobat and RectNoRotate for other viewers such as Chrome.

The TextMarkupAdjust type is a flags enumeration so different values can be combined together using bitwise operations.

The TextMarkupAdjust enumeration may take the following values:

* None - No adjustment.
* Adobe - Adjust annotation for Adobe Acrobat Reader's undocumented behavior.
* Rect - Adjust annotation's Rect and QuadPoints.
* NoRotate - Add NoRotate flag.
* RectNoRotate - Same as Rect | NoRotate.

## Example

None
