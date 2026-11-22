# WindowsLaunchParameterElement Class

This class represents the windows launch parameter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 204, page 422.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=430)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 208, page 513.](https://www.iso.org/standard/63534.html)

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.WindowsLaunchParameterElement`

A Windows launch parameter dictionary supplies platform-specific parameters for launching a file on Windows: the file (F), default directory (D), operation verb (O) such as open or print, and optional parameters string (P). These mirror the Windows ShellExecute API fields.

## Methods

| Method | Description |
| --- | --- |
| [WindowsLaunchParameterElement](1-methods/01-windowslaunchparameterelement.md) | Create a new WindowsLaunchParameterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the windows launch parameter dictionary object. |
| [EntryD](2-properties/02-entryd.md) | Represents the "D" entry of the windows launch parameter dictionary object. |
| [EntryO](2-properties/03-entryo.md) | Represents the "O" entry of the windows launch parameter dictionary object. |
| [EntryP](2-properties/04-entryp.md) | Represents the "P" entry of the windows launch parameter dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
