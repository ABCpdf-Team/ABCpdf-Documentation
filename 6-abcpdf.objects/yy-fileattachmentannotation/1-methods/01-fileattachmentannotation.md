# FileAttachmentAnnotation Function

Add file attachment annotation to the current page of the doc.

## Syntax

*C#*

[`FileAttachmentAnnotation`](../index.md)`(Doc doc, XRect rect, string filePath)`  
[`FileAttachmentAnnotation`](../index.md)`(Doc doc, XRect rect, byte[] data, string fileName, DateTime modDate, DateTime creationDate)`

## Params

| Name | Description |
| :---: | --- |
| doc | Doc |
| rect | Annotation rectangle |
| filePath | File path |
| data | The data from a file to be embedded |
| fileName | The name of the file to be embedded |
| modDate | The file modification date |
| creationDate | The file creation date |

## Notes

Add file attachment annotation to the current page of the doc.
