# OpiElement Class

This class represents the opi dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 369, page 639.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=647)

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 370, page 641.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=649)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 406, page 823.](https://www.iso.org/standard/63534.html)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 407, page 825.](https://www.iso.org/standard/63534.html)

An OPI dictionary provides metadata for a low-resolution proxy image in a PDF file, identifying the high-resolution original to substitute at final output. OPI workflows allow large image files to be excluded from the PDF during layout and proofing.

The Version entry identifies the OPI specification version: 1.3 or 2.0. Each version has different entries and semantics for describing image placement.

At output time, an OPI-aware processor reads the dictionary, locates the high-resolution original using the file specification, and substitutes it according to the placement parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.OpiElement`  
`          `[`WebSupergoo.ABCpdf14.Elements.Version13OpiElement`](../1647-version13opielement/index.md)  
`          `[`WebSupergoo.ABCpdf14.Elements.Version20OpiElement`](../1649-version20opielement/index.md)

## Methods

| Method | Description |
| --- | --- |
| [OpiElement](1-methods/01-opielement.md) | Create a new OpiElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the opi dictionary object. |
| [EntryVersion](2-properties/02-entryversion.md) | Represents the "Version" entry of the opi dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
