# RelatedFileSetElement Class

This class represents the related file set dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

A related file set dictionary maps platform path keys to arrays of file specification strings. It is stored in the RF entry of a full file specification and lists files that accompany the main file.

Each entry maps a path key to an array of file path strings identifying supplementary files. These files are not embedded in the PDF; they are expected to be present on the file system alongside the main referenced file.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.RelatedFileSetElement`

## Methods

| Method | Description |
| --- | --- |
| [RelatedFileSetElement](1-methods/01-relatedfilesetelement.md) | Create a new RelatedFileSetElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the related file set dictionary object. |
| [EntryUF](2-properties/02-entryuf.md) | Represents the "UF" entry of the related file set dictionary object. |
| [EntryDOS](2-properties/03-entrydos.md) | Represents the "DOS" entry of the related file set dictionary object. |
| [EntryMac](2-properties/04-entrymac.md) | Represents the "Mac" entry of the related file set dictionary object. |
| [EntryUnix](2-properties/05-entryunix.md) | Represents the "Unix" entry of the related file set dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
