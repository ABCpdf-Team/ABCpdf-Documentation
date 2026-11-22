# WebPageOperation Class

Web page operation used to import HTML or URLs into a complete multi-page document enabling document tagging for accessibility.

Only the ABCChrome engines support this functionality. Later versions of ABCChrome are much superior to earlier ones.

```
System.Object
   WebSupergoo.ABCpdf14.Operations.WebPageOperation
```

## Methods

| Method | Description |
| --- | --- |
| [WebPageOperation](1-methods/01-webpageoperation.md) | Create a WebPageOperation. |
| [ReadHtml](1-methods/02-readhtml.md) | Read a string of HTML into a paged PDF document. |
| [ReadUrl](1-methods/03-readurl.md) | Read a URL into a paged PDF document. |

## Properties

| Property | Description |
| --- | --- |
| [Doc](2-properties/01-doc.md) | The Doc object on which to operate. |
| [FixBBoxes](2-properties/06-fixbboxes.md) | Whether BBox attributes should be added as appropriate. |
| [FixFigures](2-properties/07-fixfigures.md) | Whether the figure tags in the document structure should be made PDF/UA compatible. |
| [Tagged](2-properties/02-tagged.md) | Whether the document should be tagged for accessibility. |
| [Outline](2-properties/03-outline.md) | Whether the document should contain a document outline based on the HTML content. |
| [HeaderHtml](2-properties/04-headerhtml.md) | Any HTML header required for the page. |
| [FooterHtml](2-properties/05-footerhtml.md) | Any HTML footer required for the page. |
