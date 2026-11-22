# ShowText Function

Show an item of text.

## Syntax

```csharp
virtual void ShowText(List<int> codes, List<int> widths, List<double> advances, double advanceTotal, StringBuilder text, List<string> strings, bool vertical)
```

## Params

| Name | Description |
| :---: | --- |
| codes | The character codes for the text. In general these will map to ASCII but this is not required and any encoding may be legal. |
| widths | The widths of each character in 1000ths. This list is always the same size as the codes list. |
| advances | The advance for each character in text units. This advance includes all text properties like character spacing and font size. This list is always the same size as the codes list. |
| advanceTotal | The sum of all the values in the advances list. This is essentially the same as the text width. |
| text | The Unicode text of the codes. The text length is always the same as the size of codes list. |
| strings | Some character codes do not have a single character value. For example the ligature 'fl' may be represented as one character code but the Unicode equivalent is two characters long. In this situation the 'text' parameter will contain a single character approximation and the equivalent index in the 'strings' parameter will provide the string "fl". For single character codes the index in the strings parameter will be null. This list is always the same size as the codes list. |
| vertical | True if the writing direction is vertical - top to bottom. False if it is horizontal - left to right. |

## Notes

Show an item of text. If you are processing text you will want to override this function to pick up the text show operations.

The parameters passed are owned by the [ContentStreamScanner](../index.md) and will be re-used for efficiency reasons. So if you want to keep the parameters you will need make copies of them.

This function is only called if the [DoShowText](../2-properties/03-doshowtext.md) property is set to true. Unicode values are only passed if [DoUnicode](../2-properties/04-dounicode.md) is set to true. Widths are only passed if [DoWidths](../2-properties/05-dowidths.md) is set to true.

Text units are relative to the [TextFontSize](../../i-contentstreamscanner.graphicsstate/2-properties/37-textfontsize.md) as set using the Tf operator - if you double the font size you double the advances. The text rendering matrix includes the font size so for placement on the page you would need to divide the advances by the font size and then transform using the value from [GetTextRenderingMatrix](../../i-contentstreamscanner.textstate/1-methods/02-gettextrenderingmatrix.md).
