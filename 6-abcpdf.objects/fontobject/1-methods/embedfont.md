# EmbedFont Function

Search for and embed a font file into this font object

## Syntax

```csharp
bool EmbedFont()
```

## Params

| Name | Description |
| :---: | --- |
| return | Whether the font was embedded successfully. |

## Notes

Search for and embed a font file into this font object.

If an existing font file is already embedded it will be replaced. If you wish to subset the font you will need to call the [Subset](subset.md) method after embedding the font.

Calling this function on [Identity](../2-properties/isidentity.md) encoded fonts should be done with great caution as these types of fonts rely on glyph indexes and are thus specific to a particular font file.
