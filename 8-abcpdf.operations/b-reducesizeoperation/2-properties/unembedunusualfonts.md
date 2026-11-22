# UnembedUnusualFonts Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | false | No | Whether to unembed embedded fonts that do not have an obvious substitute on the local machine. |

## Notes

Whether to unembed embedded fonts that do not have an obvious substitute on the local machine.

The difficulty of providing an appropriate substitute font depends greatly on how unusual the font is. Subsitutes are typically rather normal fonts so if you have a font like "Transport Medium" (the font used for all UK road signs) then a PDF display package should be able to provide a fairly sensible substitute. However if you have a font like "Fire and Ice" it is likely that the substitute will not be terribly appropriate. The most extreme example of this comes with barcode fonts which of course look completely different from the characters that they represent.

If is difficult to know what fonts are unusual. However if the font does not appear on the local machine then it is a reasonable assumption that it may not substitute well. As such this property allows you to avoid unembedding such fonts.
