# EmbeddedFileSetElement Class

This class represents the embedded file set dictionary. This is definitively detailed in:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; page 103.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=111)

This is a structure described in the EF entry of the PDF Specification table referenced above. In the specification this structure does not have a name.

An embedded file set dictionary maps platform-specific path keys to embedded file stream references. It is stored in the EF entry of a full file specification and provides the actual stream data for one or more platform paths.

Each entry in the dictionary maps a path key (F, UF, DOS, Mac, or Unix) to an indirect reference to an embedded file stream. The referenced stream contains the actual file data with its own stream dictionary parameters.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Elements.Element`](../../01-base/1086-element/index.md)  
`       WebSupergoo.ABCpdf14.Elements.EmbeddedFileSetElement`

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedFileSetElement](1-methods/01-embeddedfilesetelement.md) | Create a new EmbeddedFileSetElement. |
|  | [inherited methods...](../../01-base/1086-element/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [EntryF](2-properties/01-entryf.md) | Represents the "F" entry of the embedded file set dictionary object. |
| [EntryUF](2-properties/02-entryuf.md) | Represents the "UF" entry of the embedded file set dictionary object. |
| [EntryDOS](2-properties/03-entrydos.md) | Represents the "DOS" entry of the embedded file set dictionary object. |
| [EntryMac](2-properties/04-entrymac.md) | Represents the "Mac" entry of the embedded file set dictionary object. |
| [EntryUnix](2-properties/05-entryunix.md) | Represents the "Unix" entry of the embedded file set dictionary object. |
|  | [inherited properties...](../../01-base/1086-element/index.md) |
