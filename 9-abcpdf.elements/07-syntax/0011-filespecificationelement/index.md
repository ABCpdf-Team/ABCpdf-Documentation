# FileSpecificationElement Class

This class represents the file specification dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

This class is always an indirect object because RichMediaActivationElement.EntryScripts, RichMediaInstanceElement.EntryAsset and StructureTreeRootElement.EntryPronunciationLexicon require it to be so.

A file specification identifies an external file that a PDF document references. The specification may be a simple string holding a file path or a full dictionary with platform-specific paths and optional embedded file streams.

File specifications are used in embedded file attachments, external stream references, and associated file relationships. The dictionary form allows a single specification to carry paths for multiple platforms simultaneously.

In PDF 2.0, file specifications may include an AFRelationship entry that names the relationship between the referencing object and the specified file, supporting the associated files mechanism used in PDF/A-3 and similar profiles.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.FileSpecificationElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.FullFileSpecificationElement`](../1110-fullfilespecificationelement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.StringFileSpecificationElement`](../1108-stringfilespecificationelement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [FileSpecificationElement](1-methods/01-filespecificationelement.md) | Create a new FileSpecificationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| :---: | --- |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
