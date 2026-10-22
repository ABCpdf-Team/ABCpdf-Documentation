# FooterHtml Property

## Notes

Any HTML footer required for the page.

Ensure you have set an appropriate margin at the bottom of the page if you want to use this property.

The HTML content area is defined by the Doc.Rect. Headers go above the Doc.Rect. Footers go below it.

As such if you set footers you need to ensure that you leave sufficient room between the bottom of the Doc.Rect and the bottom of the Doc.MediaBox.

There are special HTML tags you can use to insert pre-defined content.

For example, to add page numbers in the form "Page X of Y" to every page use: Page <span class=pageNumber></span> of <span class=totalPages></span>
