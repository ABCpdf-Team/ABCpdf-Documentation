# DestinationElement Class

This class represents a destination.

A destination is a location within this document or sometimes in a different document.

Along with the location, a destination carries extra information to state how the destination should be viewed.

For example it may specify a page size, or zoom level or pinned point.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 151, page 366.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=374)

A destination specifies a location within a PDF document, consisting of a page reference and a set of parameters controlling the initial view when that location is displayed. Destinations are used in links, bookmarks, and go-to actions.

The Target entry identifies the destination type, which determines how the remaining parameters are interpreted. Common types include XYZ (explicit coordinates and zoom), Fit (fit the page), FitH (fit the page width), FitV (fit the page height), and FitR (fit a rectangle).

For XYZ destinations, the three parameter entries give the left coordinate, top coordinate, and zoom factor. A null value for any of these means the reader retains the current value of that parameter.

Destinations may be defined inline in a link annotation's Dest entry or stored by name in the document's name dictionary for reference by multiple links and bookmarks.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.DestinationElement`

## Methods

| Method | Description |
| --- | --- |
| [DestinationElement](1-methods/01-destinationelement.md) | Create a new DestinationElement. |
| [SetTarget](1-methods/02-settarget.md) | Sets the page and type for the destination. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTarget](2-properties/01-entrytarget.md) | This property represents the destination target. |
| [EntryType](2-properties/02-entrytype.md) | This property represents the type of destination. |
| [EntryParameter1](2-properties/03-entryparameter1.md) | This property represents the first parameter associated with the destination. |
| [EntryParameter2](2-properties/04-entryparameter2.md) | This property represents the first parameter associated with the destination. |
| [EntryParameter3](2-properties/05-entryparameter3.md) | This property represents the first parameter associated with the destination. |
| [EntryParameter4](2-properties/06-entryparameter4.md) | This property represents the first parameter associated with the destination. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
