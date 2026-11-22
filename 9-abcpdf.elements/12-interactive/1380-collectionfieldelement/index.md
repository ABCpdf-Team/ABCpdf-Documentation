# CollectionFieldElement Class

This class represents the collection field dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 157, page 372.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=380)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 155, page 448.](https://www.iso.org/standard/63534.html)

[Adobe Supplement to the ISO 32000, BaseVersion: 1.7, ExtensionLevel: 3; Table: 8.8, page 30.](http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf#page=30)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.CollectionFieldElement`

A collection field dictionary defines a single metadata column in a portfolio schema. It specifies the data type of the column, the visible label, the sort order, and whether the column is visible in the collection view.

The column data type, given by the Subtype entry, determines how the viewer formats and sorts values and how values are encoded in each embedded file's collection item dictionary.

The V and E entries are flags controlling whether the column is visible and editable. Viewers that support editing portfolio metadata use these to decide which columns to show and allow the user to change.

## Methods

| Method | Description |
| --- | --- |
| [CollectionFieldElement](1-methods/01-collectionfieldelement.md) | Create a new CollectionFieldElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the collection field dictionary object. |
| [EntrySubtype](2-properties/02-entrysubtype.md) | Represents the "Subtype" entry of the collection field dictionary object. |
| [EntryN](2-properties/03-entryn.md) | Represents the "N" entry of the collection field dictionary object. |
| [EntryO](2-properties/04-entryo.md) | Represents the "O" entry of the collection field dictionary object. |
| [EntryV](2-properties/05-entryv.md) | Represents the "V" entry of the collection field dictionary object. |
| [EntryE](2-properties/06-entrye.md) | Represents the "E" entry of the collection field dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
