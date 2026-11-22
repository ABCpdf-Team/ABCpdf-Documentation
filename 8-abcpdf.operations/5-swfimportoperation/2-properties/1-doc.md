# Doc Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Doc`](../../../5-abcpdf/doc/index.md) | null | No | The target PDF document. |

## Notes

The document used by the import operation. This is where the flash movie frames are imported into.

This property must not be null before the [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.ImageFrame returns/is handled.

## Example

See the [Import](../1-methods/import.md) method.

Also see example code in: [ProcessingInfo FrameNumber Property](../../2-processinginfo/2-properties/framenumber.md), [SwfImportOperation Import Function](../1-methods/import.md).
