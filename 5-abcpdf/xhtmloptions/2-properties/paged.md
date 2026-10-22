# Paged Property

## Notes

This property applies to the MSHTML engine only.

This property determines whether HTML should be prepared in a way that allows it to be paged over multiple PDF pages.

If paged mode is used then only the first page of the document is drawn. Subsequent pages can be drawn using the Doc.AddImageToChain method.

There are subtle differences between paged and non-paged HTML. In general you will want to set this parameter to true even if you only wish to draw one page.

## Example

None.

