# ProcessingInfo Class

Provides generic information relating to the [Operation.ProcessingObject](../1-operation/3-events/1-processingobject.md) event. The information about the source of the operation is available here when [ProcessingObjectEventArgs.Object](../2-processingobjecteventargs/2-properties/object.md) is null if the source is in a non-PDF format.

```
System.Object
    WebSupergoo.ABCpdf14.Operations.ProcessingInfo
```

## Methods

| Method | Description |
| --- | --- |
| [ProcessingInfo](1-methods/1-processinginfo.md) | ProcessingInfo Constructor. |

## Properties

| Property | Description |
| --- | --- |
| [SourceType](2-properties/1-sourcetype.md) | Gets the type of the source object to be processed and the stage of operation. |
| [Handled](2-properties/2-handled.md) | Gets or sets a value that indicates whether the event handler has handled the event so that the operation skips the default processing. |
| [X](2-properties/3-x.md) | Gets the x-coordinate of the location of the source object. |
| [Y](2-properties/4-y.md) | Gets the y-coordinate of the location of the source object. |
| [Width](2-properties/5-width.md) | Gets the width of the source object. |
| [Height](2-properties/6-height.md) | Gets the height of the source object. |
| [DocNumber](2-properties/docnumber.md) | Gets or sets the document number of the source document being/to be processed. |
| [DocCount](2-properties/doccount.md) | Gets the number of documents in the source object. |
| [PageNumber](2-properties/pagenumber.md) | Gets or sets the page number of the source page being/to be processed. |
| [PageCount](2-properties/pagecount.md) | Gets the number of pages in the source object. |
| [FrameNumber](2-properties/framenumber.md) | Gets or sets the frame number of the source frame being/to be processed. |
| [FrameCount](2-properties/framecount.md) | Gets the number of frames in the source object. |
| [FrameRate](2-properties/framerate.md) | Gets the number of frames per second for the source object. |
| [BackgroundColor](2-properties/backgroundcolor.md) | Gets the background color of the source object. |
| [StreamPosition](2-properties/streamposition.md) | Gets or Sets the stream position of the source object, if applicable. |
| [StreamLength](2-properties/streamlength.md) | Gets the stream length of the source object, if applicable. |
| [Text](2-properties/text.md) | Gets the unicode Text of the Source Event, if applicable. |
