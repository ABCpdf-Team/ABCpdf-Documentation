# MeasureText Function

Measure the length of a block of text without adding it to the page.

## Syntax

```csharp
double MeasureText(string text)
double MeasureText(string text, double fontSize, double charSpacing, double wordSpacing, bool italic, bool bold, double outline)
```

## Params

| Name | Description |
| --- | --- |
| text | The text to be measured. |
| fontSize | The size of the font. |
| charSpacing | Spacing between characters. |
| wordSpacing | Spacing between words. |
| italic | Whether to apply synthetic italic. |
| bold | Whether to apply synthetic bold. |
| outline | Outline size applied to the font. |
| return | The width of the text in the provided units. |

## Notes

Measures text length using the current `Font`. Does not support complex glyphs or vertical-writing fonts (`FontObject.WritingMode`).

- Units are agnostic; results are returned in the same units provided (typically points).
- If placed at horizontal position `x` and measured width `w`, the bounding interval is `[x - outline / 2, x - outline / 2 + w]`.
- Ensure the font supports the characters; otherwise an exception may be thrown. `FontObject.VetText` can help validate.

## Example

None.
