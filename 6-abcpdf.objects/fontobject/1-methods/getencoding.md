# GetEncoding Function

Obtain a standard encoding dictionary for use with PDF text operators.

## Syntax

```csharp
static IDictionary<char, char> GetEncoding(LanguageType type, bool vertical)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| type | The language type for the desired encoding. |
| vertical | Whether the writing direction should be horizontal or vertical. |
| return | A dictionary mapping Unicode values to native character IDs. |

## Notes

Use this method to obtain a standard encoding dictionary for use with PDF text operators.

Note that the encoding dictionary is defined purely by the language and direction provided as arguments to this function. It is your responsibility to ensure that the returned encoding dictionary is only used with fonts that already have this encoding. If instead you need to encode text using the font encoding specific to this particular font see the [EncodeText](encodetext.md) method.

Since the Unicode LanguageType is already Unicode the encoding for this type is identity. For this reason an exception will be thrown if an encoding for this type is requested.

See the [Fonts and Languages](../../../3-concepts/7-fonts.md) section for details on language types.
