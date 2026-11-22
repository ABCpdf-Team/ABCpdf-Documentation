# EncodeDoubleByte Function

Encode a string into a format for use in a content stream using a composite font with a double byte CMap.

## Syntax

```csharp
static StringBuilder EncodeDoubleByte(string text, IDictionary<char, char> encoding, StringBuilder builder)
```

## Params

| Name | Description |
| :---: | --- |
| text | The text to be encoded. |
| encoding | The encoding to use - typically obtained from the [FontObject.GetEncoding](../../../6-abcpdf.objects/fontobject/1-methods/getencoding.md) method. |
| builder | The StringBuilder to which the encoded representation should be appended. |
| return | The updated StringBuilder. |

## Notes

Encode a string into a format for use in a content stream using a composite font with a double byte CMap.

Typically you will obtain an appropriate encoding from the FontObject.GetEncoding method. This method supports eight bit characters only as this is what is supported by simple fonts. Most commonly you will want to use a Korean, Japanese, ChineseS or ChineseT encoding in either horizontal or vertical format.

This method should only be used with composite fonts that specify this type of encoding as only these fonts will understand the fact that the characters are multi-byte. If you attempt to use this method with a simple font then you will get extra characters inserted since each double byte entry will be interpreted as two single characters.

See the [Fonts and Languages](../../../3-concepts/7-fonts.md) section for details on language types.
