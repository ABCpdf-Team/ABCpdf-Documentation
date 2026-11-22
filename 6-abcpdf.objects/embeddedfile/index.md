# EmbeddedFile Class

An EmbeddedFile represents a file stream embedded inside a PDF document.

It includees a small amount of metadata such as, optionally, the file creation and modification date. However it is primarily related to file data..

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       `[`WebSupergoo.ABCpdf14.Objects.StreamObject`](../streamobject/index.md)  
`          WebSupergoo.ABCpdf14.Objects.EmbeddedFile`

`Implements: IEquatable<EmbeddedFile>`

## Methods

| Method | Description |
| --- | --- |
| [EmbeddedFile](1-methods/embeddedfile.md) | EmbeddedFile Constructor. |
| ⚠ [UpdateMetadata](1-methods/updatemetadata.md) | Update metadata for the embedded file. |
|  | [inherited methods...](../streamobject/index.md) |

## Properties

| Property | Description |
| --- | --- |
| [Checksum](2-properties/checksum.md) | The 16 byte checksum for the embedded file. |
| [CreationDate](2-properties/creationdate.md) | The creation date of the embedded file. |
| [MacCreator](2-properties/maccreator.md) | The Macintosh file creator - a four char code represented as an integer. |
| [MacResFork](2-properties/macresfork.md) | The Macintosh resource forks stream for this file. |
| [MacType](2-properties/mactype.md) | The Macintosh file type - a four char code represented as an integer. |
| [ModificationDate](2-properties/modificationdate.md) | The modification date of the embedded file. |
| [Size](2-properties/size.md) | The size of the embedded file. |
| [Subtype](2-properties/subtype.md) | The subtype of the embedded file. |
|  | [inherited properties...](../streamobject/index.md) |
