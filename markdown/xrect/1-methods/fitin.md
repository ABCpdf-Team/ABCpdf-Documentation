# FitIn Function

Fits the rectangle as content inside another rectangle.

## Syntax

```csharp
void FitIn(<a href="../default.htm">XRect</a> rect, ContentAlign align, ContentScaleMode scaleMode)
```

## Params

| Name | Description |
| --- | --- |
| rect | The containing rectangle. |

## Notes

The rectangle is fitted inside the containing rectangle.

The ContentAlign enumeration can take a combination of the following values:

Center Left Right Top Bottom

The ContentScaleMode enumeration can take any of the following values:

ShowAll – make the content the biggest and completely within the area while keeping the aspect ratio. NoBorder – make the content the smallest and covering the entire area while keeping the aspect ratio. ExactFit – scale the content possibly with distortion to fit the entire area. It is the same as assignment. NoScale – no scaling. The rectangle is repositioned.

