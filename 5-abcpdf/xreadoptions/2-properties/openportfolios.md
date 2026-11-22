# OpenPortfolios Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to automatically open the default document inside a PDF portfolio rather than the portfolio itself |

## Notes

Whether to automatically open the default document inside a PDF portfolio rather than the portfolio itself.

If you wish to see the document the way a user would see it when it opens, them this parameter should be set to true. If you wish to operate upon the set of files embedded in the portfolio then it should be set to false.

## Example

See the [FileSpecification constructor](../../../6-abcpdf.objects/filespecification/1-methods/filespecification.md) for the creation of portfolios. See the [Catalog.GetEmbeddedFiles](../../../6-abcpdf.objects/catalog/1-methods/getembeddedfiles.md) function for how to extract files from a portfolio.

Also see example code in: [Catalog GetEmbeddedFiles Function](../../../6-abcpdf.objects/catalog/1-methods/getembeddedfiles.md).
