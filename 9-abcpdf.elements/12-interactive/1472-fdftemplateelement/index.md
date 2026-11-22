# FDFTemplateElement Class

This class represents the fdf template dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 249, page 464.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=472)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 252, page 562.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FDFTemplateElement`

An FDF template dictionary identifies a page to use as a template when spawning new pages. The TRef entry references the named page, Fields carries field data to populate on the spawned page, and Rename controls field-name uniquification.

## Methods

| Method | Description |
| --- | --- |
| [FDFTemplateElement](1-methods/01-fdftemplateelement.md) | Create a new FDFTemplateElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryTRef](2-properties/01-entrytref.md) | Represents the "TRef" entry of the fdf template dictionary object. |
| [EntryFields](2-properties/02-entryfields.md) | Represents the "Fields" entry of the fdf template dictionary object. |
| [EntryRename](2-properties/03-entryrename.md) | Represents the "Rename" entry of the fdf template dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
