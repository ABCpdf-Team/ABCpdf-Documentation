# Frame Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `long` | 0 | No | The frame to be read from a multiple frame image such as a movie. |

## Notes

This property is used by [read modules](1-readmodule.md) that support frames or sub-documents.

Frames are numbered from one upwards. The default of zero indicates that a default frame or frame set should be used.

The SwfVector module uses this property when the [Operation](operation.md) is null. When this occurs a temporary [SwfImportOperation](../../../8-abcpdf.operations/5-swfimportoperation/index.md) is created and the [ProcessingObjectEventArgs.Info.FrameNumber](../../../8-abcpdf.operations/2-processinginfo/2-properties/framenumber.md) is set to the value of this property. The default behavior is to read frame one.

The MSOffice module uses this property to allow you to read individual worksheets from within an Excel spreadsheet. The default behavior is to read all the worksheets in order rather than simply select one of them.
