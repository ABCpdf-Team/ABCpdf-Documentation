# Structure Class

Represents the PDF tagged structure.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.Accessibility.Structure
```

## Methods

| Method | Description |
| --- | --- |
| [Structure](1-methods/01-structure.md) | Create a new Structure based on the content in a doc. |
| [CreateAsRequired](1-methods/02-createasrequired.md) | Create the basic structure entries if they are not already present. |
| [FindElementsByType](1-methods/02-findelementsbytype.md) | Scan through the structure to find all structure elements of a particular type. |
| [GetPageNumber](1-methods/02-getpagenumber.md) | Get the page number for a particular page object. |
| [ExtractStructure](1-methods/03-extractstructure.md) | Extract the structure in an HTML-like format that can be displayed in a browser. |
| [MarkupStructure](1-methods/04-markupstructure.md) | Mark up the structure on the PDF pages so that it can be seen in a PDF reader. |
| [UpdateActualText](1-methods/05-updateactualtext.md) | The logical structure can contain a copy of text which is drawn on the page. |
| [Purge](1-methods/06-purge.md) | The tagged structure of the document references items displayed on the page. |
| [ReplaceImages](1-methods/07-replaceimages.md) | Replace a set of images with a new one. |
| [ReplaceText](1-methods/08-replacetext.md) | Replace one item of text with another. |
| [Detag](1-methods/02-detag.md) | Removes all structure and structure tags from the document. |

## Properties

| Property | Description |
| --- | --- |
| [Catalog](2-properties/01-catalog.md) | The Catalog object at the root of the document. |
| [Root](2-properties/02-root.md) | The StructureElement at the root of the tagging structure. |
| [ParentTree](2-properties/03-parenttree.md) | The ParentTree for the tagged structure. |
| [Title](2-properties/04-title.md) | The title for the document. |
