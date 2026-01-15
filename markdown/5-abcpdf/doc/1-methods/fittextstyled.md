# FitTextStyled Function

Fit a block of styled text into the current rectangle.

## Syntax

```csharp
int FitTextStyled(string text)
```

## Params

| Name | Description |
| --- | --- |
| text | The HTML to be added to the page. |
| return | The Object ID of the newly added Text Object. |

## Notes

Fit a block of styled text into the current rectangle on the current page.

This function is similar to AddTextStyled but can be used in situations in which you have a set area into which you know your text should be fitted. The call will take the base text supplied and scale it appropriately until it fits as exactly as possible into the current Rect.

