# ResetRegions Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Gets or sets a value that indicates whether BackgroundRegion and ClipRegion are reset when the [Operation.ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.MultiFrameImage or of ProcessingSourceType.ImageFrame is generated. |

## Notes

Indicates whether the background and clip regions should be reset to the frame bounds each time a new frame is about to be imported. The regions are set as if [XRect.SetRect](../../../5-abcpdf/xrect/1-methods/setrect.md) is called with the [X](../../2-processinginfo/2-properties/3-x.md), [Y](../../2-processinginfo/2-properties/4-y.md), [Width](../../2-processinginfo/2-properties/5-width.md), and [Height](../../2-processinginfo/2-properties/6-height.md) properties of the [ProcessingInfo](../../2-processingobjecteventargs/2-properties/info.md). Set this property to false when you want the regions not to be reset when the [Operation.ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.MultiFrameImage or of ProcessingSourceType.ImageFrame is generated.
