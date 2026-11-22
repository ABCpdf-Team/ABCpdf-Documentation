# LinearizationParameterElement Class

This class represents the linearization parameter dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: f.1, page 680.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=688)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: f.1, page 877.](https://www.iso.org/standard/63534.html)

The linearization parameter dictionary is stored at the very beginning of a linearized PDF file. It enables a web browser or networked reader to display the first page while the rest of the file is still downloading.

The Linearized entry confirms the file is linearized and gives the specification version used as a real number.

The L entry gives the total file length in bytes, allowing a reader to verify a download is complete.

The H entry holds an array of two or four integers giving the offset and length of the primary and overflow hint streams. Hint streams allow a reader to calculate byte ranges of objects before downloading them.

The O entry gives the object number of the first page object, allowing immediate first-page display. The E entry gives the byte offset of the end of the first page objects.

The N entry gives the total number of pages. The T entry gives the byte offset of the main cross-reference table or stream. The P entry gives the page index of the first page as defined by the linearization.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.LinearizationParameterElement`

## Methods

| Method | Description |
| --- | --- |
| [LinearizationParameterElement](1-methods/01-linearizationparameterelement.md) | Create a new LinearizationParameterElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryLinearized](2-properties/01-entrylinearized.md) | Represents the "Linearized" entry of the linearization parameter dictionary object. |
| [EntryL](2-properties/02-entryl.md) | Represents the "L" entry of the linearization parameter dictionary object. |
| [EntryH](2-properties/03-entryh.md) | Represents the "H" entry of the linearization parameter dictionary object. |
| [EntryO](2-properties/04-entryo.md) | Represents the "O" entry of the linearization parameter dictionary object. |
| [EntryE](2-properties/05-entrye.md) | Represents the "E" entry of the linearization parameter dictionary object. |
| [EntryN](2-properties/06-entryn.md) | Represents the "N" entry of the linearization parameter dictionary object. |
| [EntryT](2-properties/07-entryt.md) | Represents the "T" entry of the linearization parameter dictionary object. |
| [EntryP](2-properties/08-entryp.md) | Represents the "P" entry of the linearization parameter dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
