# SelectorRenditionElement Class

This class represents the selector rendition dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 272, page 492.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=500)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 283, page 616.](https://www.iso.org/standard/63534.html)

A selector rendition contains an ordered array of renditions and selects the first one whose playback criteria are satisfied. It provides a fallback mechanism when a document must support a range of playback environments.

The R entry holds the array of rendition dictionaries to try in order. A conforming reader evaluates each candidate's criteria in sequence and activates the first rendition that qualifies. If no candidate qualifies, nothing plays.

Selector renditions may be nested: an element of the R array may itself be a selector rendition, allowing hierarchical fallback strategies.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.RenditionElement`](../1497-renditionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.SelectorRenditionElement`

## Methods

| Method | Description |
| --- | --- |
| [SelectorRenditionElement](1-methods/01-selectorrenditionelement.md) | Create a new SelectorRenditionElement. |
|  | [inherited methods...](../1497-renditionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the selector rendition dictionary object. |
|  | [inherited properties...](../1497-renditionelement/index.md) |
