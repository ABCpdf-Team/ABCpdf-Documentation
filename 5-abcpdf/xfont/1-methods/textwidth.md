# TextWidth&nbsp;Function

Calculate the  width of a string of text.

## Syntax

[C#]

```csharp
int&nbsp;TextWidth(string text)
```

## Params

| **Name** | **Description** |
| --- | --- |
| text | The text |
| return | The width of the text in 1000ths. |

## Notes

This function calculates the width for a given text string.

The value returned is measured in thousandths of a unit. So to calculate the physical size on the page multiply the returned value by the font size and divide by one thousand.

