# Operation Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`Operation`](../../../8-abcpdf.operations/1-operation/index.md) | null | No | Gets or sets the Operation to use. |

## Notes

This property is used by modules for which a suitable derived class of [Operation](../../../8-abcpdf.operations/1-operation/index.md) exists. If it is null, those modules create a temporary [Operation](../../../8-abcpdf.operations/1-operation/index.md) with default behaviours.

| [ReadModule](1-readmodule.md) | Operation | Description |
| --- | --- | --- |
| SwfVector | [SwfImportOperation](../../../8-abcpdf.operations/5-swfimportoperation/index.md) | If this property is null, the temporary [SwfImportOperation](../../../8-abcpdf.operations/5-swfimportoperation/index.md) has its [Timeout](../../../8-abcpdf.operations/5-swfimportoperation/2-properties/5-timeout.md) set to [Timeout](timeout.md) and sets [ProcessingObjectEventArgs.Info.FrameNumber](../../../8-abcpdf.operations/2-processinginfo/2-properties/framenumber.md) to [Frame](frame.md) once. |
| Xps | [XpsImportOperation](../../../8-abcpdf.operations/4-xpsimportoperation/index.md) | If this property is null, the temporary [XpsImportOperation](../../../8-abcpdf.operations/4-xpsimportoperation/index.md) compresses the [GraphicLayer](../../../6-abcpdf.objects/graphiclayer/index.md)'s of the pages. |
| XpsAny | [XpsImportOperation](../../../8-abcpdf.operations/4-xpsimportoperation/index.md) | If this property is null, the temporary [XpsImportOperation](../../../8-abcpdf.operations/4-xpsimportoperation/index.md) compresses the [GraphicLayer](../../../6-abcpdf.objects/graphiclayer/index.md)'s of the pages. |
