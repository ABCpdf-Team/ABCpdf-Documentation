# Compact  Function

Compact and compress the document.

## Syntax

[C#]

```csharp
void Compact(bool wholeDocument)
```

## Params

| **Name** | **Description** |
| --- | --- |
| wholeDocument | Whether to compact the entire document or only selected pages. |

## Notes

Compact and compress the document.

The two main types of resources which take up file space are images and embedded fonts. As such this method allows you to resize images to a lower resolution, compress them using different methods and quality settings and remove embedded fonts. The particular options appropriate to your documents can be set using the properties on this operation.

During processing [ProcessingObject](1-operation/3-events/1-processingobject.md) and [ProcessedObject](1-operation/3-events/2-processedobject.md) events will be fired for each font or image object that is being operated upon. Using the arguments included with these events you can take finer control over the application of this operation.

If you have previously added content to the document it will need to be frozen in place. This may result in changes to the [Doc.HtmlOptions](5-abcpdf/doc/2-properties/htmloptions.md) [Doc.Rendering](5-abcpdf/doc/2-properties/rendering.md) and [Doc.SaveOptions](5-abcpdf/doc/2-properties/saveoptions.md) properties.

You may also wish to set the [SaveOptions.CompressObjects](5-abcpdf/xsaveoptions/2-properties/compressobjects.md) property to true, to further reduce the output size on save.

This type of operation is fairly complex and can take some time on larger documents.

## Example

The following example shows how to compress a document.

[C#]

```csharp
using var doc = new Doc();
doc.Read("../mypics/sample.pdf");
using (var op = new ReduceSizeOperation(doc))
  op.Compact(true);
doc.Save("ReduceSizeOperation.pdf");
```

