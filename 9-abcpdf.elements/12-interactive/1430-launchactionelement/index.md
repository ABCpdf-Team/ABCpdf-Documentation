# LaunchActionElement Class

This class represents the launch action. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 203, page 422.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=430)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 207, page 513.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       `[`WebSupergoo.ABCpdf14.Elements.ActionElement`](../1422-actionelement/index.md)  
`          WebSupergoo.ABCpdf14.Elements.LaunchActionElement`

A launch action opens a file or application. The F entry specifies the file for all platforms; Win, Mac, and Unix entries provide platform-specific parameters. Viewers should warn users before launching external applications.

## Methods

| Method | Description |
| --- | --- |
| [LaunchActionElement](1-methods/01-launchactionelement.md) | Create a new LaunchActionElement. |
|  | [inherited methods...](../1422-actionelement/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the launch action object. |
| [EntryWin](2-properties/02-entrywin.md) | Represents the "Win" entry of the launch action object. |
| [EntryMac](2-properties/03-entrymac.md) | Represents the "Mac" entry of the launch action object. |
| [EntryUnix](2-properties/04-entryunix.md) | Represents the "Unix" entry of the launch action object. |
| [EntryNewWindow](2-properties/05-entrynewwindow.md) | Represents the "NewWindow" entry of the launch action object. |
|  | [inherited properties...](../1422-actionelement/index.md) |
