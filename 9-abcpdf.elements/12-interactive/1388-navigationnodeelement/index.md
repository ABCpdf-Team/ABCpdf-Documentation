# NavigationNodeElement Class

This class represents the navigation node dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 163, page 380.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=388)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 165, page 461.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.NavigationNodeElement`

A navigation node dictionary is part of a navigation tree providing alternate navigation paths for a document, primarily used in connection with PDF presentation features.

The NA and PA entries reference the next and previous actions to execute when navigating forward and backward through the tree. The Next and Prev entries link sibling nodes, and Dur gives the recommended dwell time in seconds before automatic advance.

## Methods

| Method | Description |
| --- | --- |
| [NavigationNodeElement](1-methods/01-navigationnodeelement.md) | Create a new NavigationNodeElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the navigation node dictionary object. |
| [EntryNA](2-properties/02-entryna.md) | Represents the "NA" entry of the navigation node dictionary object. |
| [EntryPA](2-properties/03-entrypa.md) | Represents the "PA" entry of the navigation node dictionary object. |
| [EntryNext](2-properties/04-entrynext.md) | Represents the "Next" entry of the navigation node dictionary object. |
| [EntryPrev](2-properties/05-entryprev.md) | Represents the "Prev" entry of the navigation node dictionary object. |
| [EntryDur](2-properties/06-entrydur.md) | Represents the "Dur" entry of the navigation node dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
