# FontSubset Property

## Notes

This property applies to the ABCGecko and MSHTML engines.

This property determines whether embedded fonts are subset.

HTML rendering may require that fonts are added to the PDF document.

By default these fonts are - where possible - referenced. You can use FontEmbed to ensure that fonts are embedded. When FontEmbed is set to true, you can then use this property to specify if fonts should be subset (only required glyphs are embedded) or not (entire font is embedded). This will considerably increase output size and processing time.

## Example

None.

