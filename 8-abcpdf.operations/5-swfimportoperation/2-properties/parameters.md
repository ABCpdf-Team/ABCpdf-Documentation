# Parameters Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| [`SwfParameters`](../../5-swfparameters/index.md) | null | No | The parameters for initializing the SWF machine. |

## Notes

This property specifies the parameters for initializing the SWF machine.

If it is set, it should be set before the first time a proper [FrameNumber](../../2-processinginfo/2-properties/framenumber.md) is returned in a [ProcessingObject](../../1-operation/3-events/1-processingobject.md) event of ProcessingSourceType.MultiFrameImage. It is not used after the machine is initialized.

## Example

See the [SwfParameters.FlashVars](../../5-swfparameters/2-properties/flashvars.md) property.
