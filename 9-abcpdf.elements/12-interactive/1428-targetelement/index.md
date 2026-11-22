# TargetElement Class

This class represents the target dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 202, page 420.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=428)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 205, page 510.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.TargetElement`

A target dictionary describes a single step in the file-embedding path used by an embedded go-to action. The R entry gives the relationship (P for parent, C for child). For child targets N names the embedded file. The T entry chains another target for further traversal.

## Methods

| Method | Description |
| --- | --- |
| [TargetElement](1-methods/01-targetelement.md) | Create a new TargetElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryR](2-properties/01-entryr.md) | Represents the "R" entry of the target dictionary object. |
| [EntryN](2-properties/02-entryn.md) | Represents the "N" entry of the target dictionary object. |
| [EntryP](2-properties/03-entryp.md) | Represents the "P" entry of the target dictionary object. |
| [EntryA](2-properties/04-entrya.md) | Represents the "A" entry of the target dictionary object. |
| [EntryT](2-properties/05-entryt.md) | Represents the "T" entry of the target dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
