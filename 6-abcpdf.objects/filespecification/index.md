# FileSpecification Class

A file specification represents the name and location of a file and optionally may also include references to embedded data.

The crucial properties of this class are Uri and EmbeddedFile. All other methods and properties are organized around backwards compatibility with obsolete entries so you are unlikely to need them when constructing new documents..

If you have an old PDF which contains obsolete entries, the Rationalize method will attempt to make the entries compliant. So again you should only need the Rationalize method and the Uri and EmbeddedFile properties.

`System.Object`  
`    `[`WebSupergoo.ABCpdf14.Objects.IndirectObject`](../1-indirectobject/index.md)  
`       WebSupergoo.ABCpdf14.Objects.FileSpecification`

`Implements: IEquatable<FileSpecification>`

## Methods

| Method | Description |
| --- | --- |
| [FileSpecification](1-methods/filespecification.md) | FileSpecification Constructor. |
| [GetPath](1-methods/getpath.md) | Get the path to the file for the specified platform. |
| [Rationalize](1-methods/rationalize.md) | Removes any obsolescent and redundant entries. |
| [SetPath](1-methods/setpath.md) | Set the path to the file for the specified platform. |

## Properties

| Property | Description |
| --- | --- |
| [Description](2-properties/description.md) | A description of the file for use in a user interface. |
| [EmbeddedFile](2-properties/embeddedfile.md) | The embedded file if one has been embedded in the PDF. |
| [EmbeddedFiles](2-properties/embeddedfiles.md) | The set of embedded files if a set has been embedded in the PDF. |
| [Platform](2-properties/platform.md) | The default platform being used for the file specification. |
| ⚠ [Uri](2-properties/uri.md) | The URI to the file. |
| [Volatile](2-properties/volatile.md) | Whether the file changes frequently. |
