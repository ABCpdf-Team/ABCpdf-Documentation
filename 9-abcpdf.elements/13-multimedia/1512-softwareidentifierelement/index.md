# SoftwareIdentifierElement Class

This class represents the software identifier dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 292, page 504.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=512)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 303, page 631.](https://www.iso.org/standard/63534.html)

A software identifier dictionary identifies a software application by URI and version constraints. It is used in media player info dictionaries to name a specific media player and to express minimum and maximum version requirements.

The U entry holds the URI that identifies the software. This URI is typically a vendor-defined string that uniquely identifies the player, not necessarily a URL.

The L entry holds the minimum allowed version as an array of non-negative integers giving the version components from most to least significant. The LI entry, when true, makes the minimum version inclusive.

The H entry holds the maximum allowed version. The HI entry, when true, makes the maximum version inclusive. The OS entry specifies the operating systems on which this player runs.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.SoftwareIdentifierElement`

## Methods

| Method | Description |
| --- | --- |
| [SoftwareIdentifierElement](1-methods/01-softwareidentifierelement.md) | Create a new SoftwareIdentifierElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryType](2-properties/01-entrytype.md) | Represents the "Type" entry of the software identifier dictionary object. |
| [EntryU](2-properties/02-entryu.md) | Represents the "U" entry of the software identifier dictionary object. |
| [EntryL](2-properties/03-entryl.md) | Represents the "L" entry of the software identifier dictionary object. |
| [EntryLI](2-properties/04-entryli.md) | Represents the "LI" entry of the software identifier dictionary object. |
| [EntryH](2-properties/05-entryh.md) | Represents the "H" entry of the software identifier dictionary object. |
| [EntryHI](2-properties/06-entryhi.md) | Represents the "HI" entry of the software identifier dictionary object. |
| [EntryOS](2-properties/07-entryos.md) | Represents the "OS" entry of the software identifier dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
