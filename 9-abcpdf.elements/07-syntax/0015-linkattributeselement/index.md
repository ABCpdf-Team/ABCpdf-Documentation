# LinkAttributesElement Class

This class represents link structure attributes.

These are attributes associated with links in tagged PDF documents.

This is not part of the offical PDF specification, but it is used in Adobe produced documents.

Link attribute dictionaries carry properties that associate a URI or destination with a region in a PDF document. They are used in the web capture mechanism to record the origin of captured content.

The S entry names the type of link: URL for a URI-based link or Page for a page-based link. The ID entry holds the URI string for URL links.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.AttributesElement`](../../14-document/1575-attributeselement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.LinkAttributesElement`

## Methods

| Method | Description |
| --- | --- |
| [LinkAttributesElement](1-methods/01-linkattributeselement.md) | Create a new LinkAttributesElement. |
|  | [inherited methods...](../../14-document/1575-attributeselement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryID](2-properties/01-entryid.md) | This property represents the "ID" entry of the link structure attributes object. |
| [EntryS](2-properties/02-entrys.md) | This property represents the "S" entry of the link structure attributes object. |
|  | [inherited properties...](../../14-document/1575-attributeselement/index.md) |
