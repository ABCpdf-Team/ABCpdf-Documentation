# EmbeddedFile Function

EmbeddedFile Constructor

## Syntax

[C#]

```csharp
EmbeddedFile(<a href="../../2-objectsoup/default.htm">ObjectSoup</a> soup)EmbeddedFile(<a href="../../2-objectsoup/default.htm">ObjectSoup</a> soup, string path)EmbeddedFile(<a href="../../2-objectsoup/default.htm">ObjectSoup</a> soup, byte[] data)
```

## Params

| **Name** | **Description** |
| --- | --- |
| soup | The ObjectSoup to contain the newly created EmbeddedFile. |
| path | A path to a file containing data which should be placed in the EmbeddedFile. |
| data | An array of bytes which should be placed in the EmbeddedFile. |

## Notes

Create an EmbeddedFile.

This constructor which takes a path to a file will embed and compress the file data using the [CompressFlate](streamobject/1-methods/compressflate.md) function. It will also insert appropriate metadata using the [UpdateMetadata](updatemetadata.md) function.

The constructor which takes an array of data will similarly embed and compress the data. However since there is no file path metadata will not be assigned.

## Example

None
