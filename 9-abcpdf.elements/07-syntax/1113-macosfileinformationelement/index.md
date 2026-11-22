# MacOSFileInformationElement Class

This class represents the mac os file information dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 47, page 105.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=113)

The MacOS file information dictionary stores classic MacOS file metadata for embedded files: the four-character creator code and file type code used by the classic MacOS Finder.

The Creator entry holds the four-character application creator code. The ResFork entry holds an embedded copy of the file's resource fork as a stream.

These entries are preserved for compatibility with documents created on classic MacOS systems. They have no functional meaning on modern operating systems but allow round-tripping through PDF without losing MacOS-specific metadata.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.MacOSFileInformationElement`

## Methods

| Method | Description |
| --- | --- |
| [MacOSFileInformationElement](1-methods/01-macosfileinformationelement.md) | Create a new MacOSFileInformationElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntrySubtype](2-properties/01-entrysubtype.md) | Represents the "Subtype" entry of the mac os file information dictionary object. |
| [EntryCreator](2-properties/02-entrycreator.md) | Represents the "Creator" entry of the mac os file information dictionary object. |
| [EntryResFork](2-properties/03-entryresfork.md) | Represents the "ResFork" entry of the mac os file information dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
