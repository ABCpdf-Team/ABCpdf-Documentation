# EntryAU Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`Element`](../../../01-base/1086-element/index.md) | null | No | Represents the "AU" entry of the source information dictionary object. |

## Notes

Represents the "AU" entry of the source information dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

This property may contain one of two different types:.

1\) A string representing a PDF string object.

This is encoded as a string using single byte ASCII encoding.

2\) An [UrlAliasElement](../../1632-urlaliaselement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 355, page 623.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=631)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 391, page 803.](https://www.iso.org/standard/63534.html)

The AU entry holds the source URL as a string or URL alias dictionary. A URL alias records both the originally requested URL and the final URL after any redirects.
