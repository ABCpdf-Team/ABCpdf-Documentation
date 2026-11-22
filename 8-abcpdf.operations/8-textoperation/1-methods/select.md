# Select Function

Select a range of text in the document.

## Syntax

*C#*

`IList<`[`TextFragment`](../../8-textfragment/index.md)`> Select(int startIndex, int length)`

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| startIndex | The start index for the selection as related to the string returned by the GetText method. |
| length | The length for the selection as related to the string returned by the GetText method. |
| Return | Returns a list of find matches encompassing the selected text. |

## Notes

Select a range of text in the document. If GetText has not been called previously then an exception will be raised.

This function is purposely designed to be similar to the String.Substring function. The concept is that you can use the text provided via the GetText method to identify pieces of text you are interested in. Then using the offset and length of the pieces you can select the actual text in the document. So to search for a phrase, find it in the text and select it to locate its position and coordinates on the page.

The selection specifies the precise set of text fragments in the document. Each fragment has an area, some text and relates back to a text drawing operation within the content stream of the page. Applying the [Group](group.md) function to these fragments can group connected fragments into connected parts.

## Example

See the [Group](group.md) function.
