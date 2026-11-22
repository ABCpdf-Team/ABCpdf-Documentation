# FrameNumber Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `long?` | n/a | No | Gets or sets the frame number of the source frame being/to be processed. |

## Notes

The value of this property when the [Operation.ProcessingObject](../../1-operation/3-events/1-processingobject.md) event is generated depends on the operation.

The event handler should change this value when a processing sequence other than the default is desired. Set this value to null to end the processing of the current set of frames.

## Example

See the [SwfImportOperation.Import](../../5-swfimportoperation/1-methods/import.md) method.

Here we import the frame at 3.5 seconds.

```csharp
using var doc = new Doc();
using (var operation = new SwfImportOperation()) {
  operation.Doc = doc;
  operation.ContentAlign = ContentAlign.Top;
  operation.ContentScaleMode = ContentScaleMode.ShowAll;
  operation.ProcessingObject += delegate (object sender, ProcessingObjectEventArgs e) {
    if (e.Info.SourceType == ProcessingSourceType.MultiFrameImage && e.Info.FrameNumber.HasValue)
      e.Info.FrameNumber = 1 + (long)(e.Info.FrameRate.Value * 3.5);
  };
  operation.Import("../Rez/ABCpdf.swf");
}
doc.Save("swf.pdf");
```

Also see example code in: [SwfImportOperation Import Function](../../5-swfimportoperation/1-methods/import.md).
