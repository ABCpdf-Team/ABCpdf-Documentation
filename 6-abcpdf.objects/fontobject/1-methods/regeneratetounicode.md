# RegenerateToUnicode Function

Attempt to regenerate a ToUnicode map.

## Syntax

```csharp
bool RegenerateToUnicode()
```

## Params

| Name | Description |
| :---: | --- |
| return | Whether a new ToUnicode map was inserted. |

## Notes

Attempt to regenerate a ToUnicode map using embedded font data as a key.

Complex fonts are generally embedded using an identity encoding which references characters by glyph index rather than character code. Because glyph indexes are specific to a particular font, to extract text from the PDF you need a table mapping the glyph indexed to character codes. This map is called the ToUnicode map.

Well behaved PDF producers will insert a ToUnicode map for all fonts that they embed. However some font producers may fail to do so. This means that copying or extracting text from such a PDF will result in gibberish.

In some cases it is possible to regenerate the ToUnicode map from the embedded font data. This function attempts to do so and returns true if a new ToUnicode map was inserted. This function only works on [composite](../2-properties/iscomposite.md) fonts and calling it on other types of fonts will not do anything.
