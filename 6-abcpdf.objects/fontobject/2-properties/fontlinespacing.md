# FontLineSpacing Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `int` | n/a | Yes | The line spacing for the glyphs in this font |

## Notes

The line spacing for the glyphs in this font.

This broadly reflects the distance in 1000ths between the bottom of the lowest descender and the top of the highest ascender on two subsequent lines. We follow Microsoft best practice on this metric and vary the calculations depending on whether bit 7 of the fsSelection entry in the 'OS/2' TrueType table is set or not. However it is worth noting that many items of software including Microsoft flagship products do not.

The PDF format only supports a limited range of metrics so FontObjects read from PDF may contain some approximations compared with 'live' FontObjects which have been added using the Doc.AddFont or Doc.EmbedFont methods.
