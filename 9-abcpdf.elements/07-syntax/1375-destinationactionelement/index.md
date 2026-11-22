# DestinationActionElement Class

This class represents a hybrid destination and action dictionary.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; 12.3.2.3 Named Destinations, page 367.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=375)

A go-to action navigates to a destination within the same document or within a remote document. It is one of the most common action types, used in links and bookmarks to move between pages or views.

The D entry holds the destination, either as an inline destination array or as a name or string that is resolved through the document's named destinations. Using a named destination allows multiple links to share a single destination definition that can be updated in one place.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DestinationActionElement`

## Methods

| Method | Description |
| --- | --- |
| [DestinationActionElement](1-methods/01-destinationactionelement.md) | Create a new DestinationActionElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryD](2-properties/01-entryd.md) | This property represents the "D" entry of the object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
