# Decode Function

Decode a PDF encoded string into a plain string format

## Syntax

[C#]

```csharp
static StringBuilder Decode(string text, StringBuilder builder)
```

## Params

| **Name** | **Description** |
| --- | --- |
| text | The text to be decoded. |
| builder | The StringBuilder to which the encoded representation should be appended. If null then one will be created. |
| return | The StringBuilder supplied or created. |

## Notes

Decode a PDF encoded string into a plain string format.

This type of operation can be useful if you are extracting text from a PDF content stream containing raw PDF string operators.

Typically you would use the StringAtom Decode or [DecodeDoubleByte](decodedoublebyte.md) methods to allow text operator parameters to be decoded into the base text encoding. These can then be passed through the FontObject [EncodingToChar](6-abcpdf.objects/fontobject/2-properties/encodingtochar.md) and [EncodingToString](6-abcpdf.objects/fontobject/2-properties/encodingtostring.md) properties to allow mapping from the text encoding through to Unicode values.

## Example

None
