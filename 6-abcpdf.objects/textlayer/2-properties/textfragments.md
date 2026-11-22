# TextFragments Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<`[`TextFragment`](../../../8-abcpdf.operations/8-textfragment/index.md)`>` | n/a | Yes | The TextFragments describing the precise layout of this text layer |

## Notes

The [TextFragments](../../../8-abcpdf.operations/8-textfragment/index.md) describing the precise layout of this text layer.

The properties of this object can be used to establish precise metrics for each of the items of text in the layer.

The operation is created the first time this property is accessed and it is cached thereafter. To reduce memory use, you may wish to call [ClearTextOperation](../1-methods/cleartextoperation.md) after you have established the precise metrics that you require.
