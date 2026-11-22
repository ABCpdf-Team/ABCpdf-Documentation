# FontBBox Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `XRect` | n/a | Yes | The bounding box for the glyphs in this font |

## Notes

The bounding box for the glyphs in this font.

This [XRect](../../../5-abcpdf/xrect/index.md) corresponds to the xMin, xMax, yMin and yMax entries in the 'head' TrueType table.

The PDF format only supports a limited range of metrics so FontObjects read from PDF may contain some approximations compared with 'live' FontObjects which have been added using the Doc.AddFont or Doc.EmbedFont methods.
