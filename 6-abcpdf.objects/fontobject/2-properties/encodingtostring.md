# EncodingToString Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IDictionary<char, string>` | n/a | Yes | The glyph to Unicode string mapping table. |

## Notes

The glyph to Unicode string mapping table for all the characters in the font that contain one.

Most glyphs map to a single Unicode character. However in some circumstances it may be necessary to map one glyph to a sequence of characters. For example the sequence "ffl" may be represented as one glyph in a font. If there is no Unicode encoding for this type of ligature then it will need to map back to a string rather than a single Unicode character.

Typically you would use the StringAtom [Decode](../../../7-abcpdf.atoms/stringatom/1-methods/decode.md) or [DecodeDoubleByte](../../../7-abcpdf.atoms/stringatom/1-methods/decodedoublebyte.md) methods to allow text operator parameters to be decoded into the base text encoding. These can then be passed through the FontObject [EncodingToChar](encodingtochar.md) and EncodingToString properties to allow mapping from the text encoding through to Unicode values.

String encodings are unusual and this property is normally empty. If it is populated it should be viewed as a supplement and an override for the [EncodingToChar](encodingtochar.md) and [CharToEncoding](chartoencoding.md) mappings.
