# VetText Function

Make a string of text safe for use in a specified encoding.

## Syntax

```csharp
static string VetText(LanguageType type, bool vertical, string text)
static string VetText(LanguageType type, bool vertical, string text, Func<char, char> substitute)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| type | The language type for the desired encoding. |
| vertical | Whether the writing direction should be horizontal or vertical. |
| text | The text to vet. |
| substitute | A function taking a character and returning a substitute character. |
| return | The vetted text. |

## Notes

Make a string of text safe for use in a specified encoding.

Any characters which are not present in the encoding will be substituted with ones that are.

You can optionally specify a function to do the character substitution.

If your substitution function returns a character which is not present in the encoding an exception will be raised.
