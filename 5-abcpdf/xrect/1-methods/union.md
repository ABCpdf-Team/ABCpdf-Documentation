# Union Function

Union this rectangle with another rectangle.

## Syntax

[C#]

```csharp
void Union(<a href="../default.htm">XRect</a> rect)void Union(<a href="../default.htm">XRect</a> rect, bool ignoreNoArea)
```

## Params

| **Name** | **Description** |
| --- | --- |
| rect | The rectangle to add to this one. The supplied rectangle is left unchanged by this function. |
| ignoreNoArea | Whether to treat rectangles with no area as empty - default true. |

## Notes

Union the rectangle with another rectangle.

This rectangle becomes the smallest rectangle that encloses both rectangles.

Rectangles with no area will, by default, be treated as being empty. A union of a non-empty rectangle with an empty rectangle always results in the output being set to the non-empty rectangle value. If both rectangles are empty this rectangle will be left unchanged.

If the ignoreNoArea parameter is set to false then rectangles with no area will be treated as points and the output union will include that point.

## Example

Also see example code in: [CustomFont CustomFont Function](8-abcpdf.operations/R-customfont/1-methods/01-customfont.md).
