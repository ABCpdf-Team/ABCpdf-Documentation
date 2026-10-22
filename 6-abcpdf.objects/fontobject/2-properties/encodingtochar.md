# EncodingToChar Property

## Notes

The glyph to Unicode mapping table for all the characters in the font.

In this context, the glyph value is the value which occurs in the content stream when using this font. While the encoding used is often similar to ASCII it may vary considerably depending on the way the font has been included in the PDF.

Typically you would use the StringAtom Decode or DecodeDoubleByte methods to allow text operator parameters to be decoded into the base text encoding. These can then be passed through the FontObject EncodingToChar and EncodingToString properties to allow mapping from the text encoding through to Unicode values.

To map from a Unicode character to the glyph encoding see CharToEncoding.

## Example

None.

