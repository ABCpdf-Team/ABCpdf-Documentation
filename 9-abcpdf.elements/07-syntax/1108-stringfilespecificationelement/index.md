# StringFileSpecificationElement Class

This class represents the string file specification.

File specifications can be provided as a simple string or as a full dictionary containing cross platform path information.

This class represents the former.

This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 100.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=108)

A string file specification is the simplest form of file specification, consisting of a single PDF string that holds a file path or URI. It is used when only a basic file reference is needed without platform-specific paths or embedded data.

The string form is compact but less capable than the dictionary form. It cannot carry embedded file data, multiple platform-specific paths, or an associated file relationship type.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.FileSpecificationElement`](../0011-filespecificationelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.StringFileSpecificationElement`

## Methods

| Method | Description |
| --- | --- |
| [StringFileSpecificationElement](1-methods/01-stringfilespecificationelement.md) | Create a new StringFileSpecificationElement. |
|  | [inherited methods...](../0011-filespecificationelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryString](2-properties/01-entrystring.md) | This property represents the path to the file. |
|  | [inherited properties...](../0011-filespecificationelement/index.md) |
