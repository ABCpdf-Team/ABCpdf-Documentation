# Save Function

Renders and saves a page.

## Syntax

```csharp
void Save(string path)
void Save(string name, Stream stream)
```

*C#*

⚠ `may throw Exception()`

## Params

| Name | Description |
| :---: | --- |
| path | The destination file path. |
| name | A dummy file name used to determine the type of image required. |
| stream | The destination stream. |

## Notes

Renders and saves a page.

The page and rendering options which will be used are those which were current at the time the RenderOperation was created.

This method is similar in functionality to [XRendering.Save](../../../5-abcpdf/xrendering/1-methods/save.md), but allows safe multithreaded use.

You can create multiple different RenderOperations to render different pages, or indeed the same page, of a document. Each RenderOperation may live on a different thread. So the typical process is to create multiple RenderOperations on the main thread and then parcel them off to different threads which will call the Save method. The only restriction is that the pages in question must not be modified while being rendered.

Furthermore, this method generates the following events, allowing fine tuning of the rendering operations:

1. Before rendering begins, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.PageContent is generated. Set the event arguments' Cancel property to true to skip rendering altogether.
2. When a PDF path stroking or filling operator is found in the page content, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.Path is generated. Set the event arguments' Cancel property to true to skip this object. The stream length and position can be retrieved via the StreamPosition and StreamLength properties. Set the stream position to null to skip the remaining of the stream.
3. When a text PDF operator is found, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.Text is generated. The Unicode text can be retrieved in the Text property of the event Info property. the event cancel property to true to skip this object. The stream length and position can be retrieved via the [StreamPosition](../../2-processinginfo/2-properties/streamposition.md) and [StreamLength](../../2-processinginfo/2-properties/streamlength.md) properties. Set the stream position to null to skip the remaining of the stream.
4. When a shading PDF operator is found, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.Shading is generated. The same comments of point 2 above apply, for skipping the object or retrieving/setting the stream position and length.
5. When an image is found (inline or XObject), a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.Image is generated. If the image is XObject, the indirect object can be retrieved via the event arguments' Object property. the event cancel property to true to skip this object. The stream length and position can be retrieved via the [StreamPosition](../../2-processinginfo/2-properties/streamposition.md) and [StreamLength](../../2-processinginfo/2-properties/streamlength.md) properties. Set the stream position to null to skip the remaining of the stream.
6. When a Form XObject is found, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.FormXObject is generated. The indirect object can be retrieved via the event arguments' Object property. Set the event arguments' Cancel property to true to skip this object. The stream length and position can be retrieved via the [StreamPosition](../../2-processinginfo/2-properties/streamposition.md) and [StreamLength](../../2-processinginfo/2-properties/streamlength.md) properties. Set the stream position to null to skip the remaining of the stream. In addition, because Forms contain streams, a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.Stream will follow. You can set the stream position to null to skip the stream at any time. That is events for the objects contained in the Form stream will be generated, as described in points 2 to 5. Setting the stream position to null for Form objects will skip the Form stream, not the entire page content.

Every [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event is followed by a corresponding [ProcessedObject](../../1-operation/3-events/2-processedobject.md), event with the same source type. The PageContent [ProcessedObject](../../1-operation/3-events/2-processedobject.md) event will be the last event received, in that all the page objects events are sandwiched between a PageContent processing and processed events. Similarly for form streams, all the form objects events are sandwiched between a Stream processing and processed events, which in turn are sandwiched between the FormXObject processing and processed events.

Any event property or event Info property not mentioned here will be ignored.

## Example

Here we render all the pages of the doc using 10 threads at a time. We alternate rendering format between jpg and tiff. We also alternate resolution between 150 and 300 dpi. Note how the RenderingOperation is created in the constructor of TheRenderingWorker. This is because at this point a copy of the rendering options is made. Had we created the RenderingOperation in DoWork, we would have picked up only the last doc.Rendering.DotsPerInch, because the threads are started in the following loop. Also note how we dispose the operation in DoWork, to release resources stored on the native side (the copy of the rendering options basically).

```csharp
using var doc = new Doc();
doc.Read("../Rez/spaceshuttle.pdf");
string[] xts = { ".jpg", ".tif" };
int[] dpis = { 150, 300 };
var threads = new Thread[10];
int pageNum = 1, pageCount = doc.PageCount;
while (pageNum <= pageCount) {
  int count = 0;
  while (count < threads.Length && pageNum <= pageCount) {
    doc.Rendering.DotsPerInch = dpis[(pageNum - 1) % 2];
    doc.PageNumber = pageNum;
    string path = $"ABCpdf{pageNum}{xts[(pageNum - 1) % 2]}";


    threads[count] = new Thread(new RenderingWorker(doc, path).DoWork);
    ++count;
    ++pageNum;
  }
  for (int i = 0; i < count; ++i)
    threads[i].Start();
  for (int i = 0; i < count; ++i)
    threads[i].Join();
}
```

```csharp
class RenderingWorker {
  private string mPath;
  private RenderOperation mOp;

  public RenderingWorker(Doc inDoc, string inPath) {
    mPath = inPath;
    mOp = new RenderOperation(inDoc);
  }

  public void DoWork() {
    mOp.Save(mPath);
    mOp.Dispose();
  }
}
```
