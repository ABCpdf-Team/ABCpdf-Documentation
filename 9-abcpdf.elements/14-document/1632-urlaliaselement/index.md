# UrlAliasElement Class

This class represents the url alias dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 356, page 624.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=632)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 392, page 804.](https://www.iso.org/standard/63534.html)

A URL alias dictionary records the relationship between the originally requested URL and the final URL that served the content after any redirects during web capture.

The U entry holds the final URL. The C entry holds an array of indirect references to the web capture content sets retrieved from that URL.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.UrlAliasElement`

## Methods

| Method | Description |
| --- | --- |
| [UrlAliasElement](1-methods/01-urlaliaselement.md) | Create a new UrlAliasElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryU](2-properties/01-entryu.md) | Represents the "U" entry of the url alias dictionary object. |
| [EntryC](2-properties/02-entryc.md) | Represents the "C" entry of the url alias dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
