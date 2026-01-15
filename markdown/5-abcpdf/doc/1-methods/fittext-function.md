# FitText Function

Fit a block of text into the current rectangle on the current page.

## Syntax

```csharp
int FitText(string text)
```

## Params

| Name | Description |
| --- | --- |
| text | The text to be added to the page. |
| return | The Object ID of the newly added Text Object. |

## Notes

Similar to `AddText`, but scales the supplied text so it fits the current `Rect` as closely as possible.

- For styled/multi-styled text, use `FitTextStyled`.

## Example

None.
