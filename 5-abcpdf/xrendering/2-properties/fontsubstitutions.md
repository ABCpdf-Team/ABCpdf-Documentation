# FontSubstitutions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `Dictionary<string, string>` | null | No | Font substitutions to make when rendering. |

## Notes

Font substitutions to make when rendering.

If a font is not found the name of the font will be used as a lookup into this array. If a match is found then the name of the substitute will be tried instead.

Because PDF has a PostScript based heritage, the names which are used are the PostScript names. You can see what substitutions have been made by checking the [Log](log.md) property.
