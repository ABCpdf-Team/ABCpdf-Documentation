# RootTag Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`IndirectObject`](../../../6-abcpdf.objects/1-indirectobject/index.md) | null | No | The root structure element for the added tags. |

## Notes

The root structure element for the added tags.

When [CopyTags](../../../6-abcpdf.objects/signature/2-properties/compliancepades.md) is set to true, the tags for the source page are grouped under one tag before copying to the destination document.

The group is inserted as the last item on the destination page but depending on your document semantics you may wish to adjust this.

This property holds the last group added as a result of calling [DrawPage](../1-methods/02-drawpage.md).
