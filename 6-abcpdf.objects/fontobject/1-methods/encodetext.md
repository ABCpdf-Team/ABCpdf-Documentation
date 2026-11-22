# EncodeText Function

Encode text for use with PDF text operators.

## Syntax

```csharp
string EncodeText(string text, EncodingSupport support)
string EncodeText(string text, EncodingSupport support, out int outCount)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| text | The text to be encoded. |
| support | The way in which characters not included in the font are to be encoded. |
| outCount | The number of characters in (parameter) text that are encoded in the return value. |
| return | The PDF string containing the encoded text. |

## Notes

Use this method to convert Unicode text into PDF string for use with the Tj or the TJ operator.

The EncodingSupport enumeration can take any of the following values:

- All – encode all text.
- NoneIfAnyNotSupported – encode nothing if any character is not included in the font.
- SupportedPrefix – encode up to and excluding the first character not included in the font.

Note that the encoding for a font is constructed and cached at the time the font is first created. So changing the encoding for the font will not result in a corresponding change of behavior from this method. If this is something you need to do then you will need to create an entirely new font.
