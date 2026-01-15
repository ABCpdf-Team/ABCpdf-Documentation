# MeasureText Function

Measure the length of a block of text without adding it to the page.

## Syntax

```csharp
double MeasureText(string text)<br> double MeasureText(string text, double fontSize, double charSpacing, double wordSpacing, bool italic, bool bold, double outline)
```

## Params

| Name | Description |
| --- | --- |
| text | The text to be measured. |
| fontSize | The size of the font. |
| charSpacing | The spacing to be applied between each character. |
| wordSpacing | The spacing to be applied between each word. |
| italic | Whether a synthetic italic style is to be applied. |
| bold | Whether a synthetic bold style is to be applied. |
| outline | The size of any outline to be applied to the font. |
| return | The width of the text in the units provided. |

## Notes

This function is used to measure the length of a block of text using the current Font but does not support complex glyphs and fonts with vertical text direction (FontObject.WritingMode).

This method is unit agnostic so you can use whatever units you like and the result will be returned in terms of those units. However typically you would provide point based measurements to provide a point based length.

If the text is placed at a horizontal position x and w is the value this function returns, the bounding interval will be [x - outline / 2, x - outline / 2 + w].

You need to ensure that the font you are using supports the characters you are using otherwise an exception will be thrown. You may wish to use the FontObject.VetText function to check your text if you are using standard font encodings such as Latin.

