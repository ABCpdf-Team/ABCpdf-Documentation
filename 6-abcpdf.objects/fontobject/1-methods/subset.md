# Subset Function

Subset a previously embedded font.

## Syntax

[C#]

```csharp
bool Subset()bool Subset(string characters)bool Subset(int[] glyphs)
```

## Params

| **Name** | **Description** |
| --- | --- |
| characters | The character set to be used for the subsetting. |
| glyphs | The set of glyph IDs to be used for the subsetting. |
| return | Whether subsetting was performed successfully. |

## Notes

Use this method to subset a previously embedded font.

Many PDF producers are not efficient at subsetting fonts. Subsetting previously embedded fonts can be a time consuming operation but can also result in a significant reduction in file size.

If you provide a character set string then this is a relatively fast operation. However if you do not pass a character set then one has to be constructed and to do this it is necessary to analyze the entire document to determine what characters are being used. In this case if a call to [Catalog.AnalyzeContent](catalog/1-methods/analyzecontent.md) has not already been made then one will be triggered.

This call will subset embedded TrueType and CFF fonts (Compact Font Format). If the font is referenced or if the font is not one of these types then this function will return false.

This method operates on a copy-on-write basis so that fonts that share font descriptors will not be affected if one of their siblings is subsetted. The font will remain the same but a new font descriptor will be generated.

## Example

None
