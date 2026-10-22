# Vectorize Method

Vectorizes the text glyphs in the pages of a document.

## Syntax

[C#]

```csharp
void Vectorize(Doc doc)void Vectorize(Pages pages)void Vectorize(Page page)
```

## Params

| **Name** | **Description** |
| --- | --- |
| doc | The document containing the pages of text to be vectorized. |
| pages | The pages of text to be vectorized as referenced by a Pages IndirectObject. |
| page | The page of text to be vectorized as referenced by a Page IndirectObject. |

## Notes

Vectorizes the text glyphs on pages in the document.

The VectorizeTextOperation operation removes font glyphs and replaces them with polygonal outlines that appear the same.

This is also known as converting text to outlines or curves. The resulting pages do not need the fonts in order to display or print, but the text can no longer be selected, searched or extracted.

Note that pages may sometimes share content with other pages. If this is the case then vectorizing the text on one page will also vectorize it on other pages which use this shared content.

The [Operation.ProcessingObject](1-operation/3-events/1-processingobject.md) property is used to give the user some control over which fonts would be vectorized. Setting the ProcessingObjectEventArgs.Cancel to 'true' turns off the vectorization for the particular font that's passed in to the Processing method (see examples below)

Please see the [FontObject](6-abcpdf.objects/fontobject/default.md) class for more information on the ProcessingObjectEventArgs.Object argument

The [Operation.ProcessedObject](1-operation/3-events/2-processedobject.md) property is not used with this operation

## Example

Here we vectorize all the text in the document.

[C#]

```csharp
static void VectorizeDocText1(string inDocName) {
  var op = new VectorizeTextOperation();
  using var doc = new Doc();
  doc.Read(inDocName);
  op.Vectorize(doc);
  doc.Save("VectorizedSample.pdf");
}
```

