# Compact Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `bool` | true | No | Whether to compact the document on save. |

## Notes

This property determines if output size should be reduced by compact the document.

Compaction will flatten all the page contents to make them smaller.

This type of flattening will not take place if you are using [SaveOptions.Incremental](incremental.md) as it is easier to make a document bigger rather than smaller if incremental update is set. Indeed if the previous document is signed then compacting may cause changes which viewers might regard as suspicious..

As such, if you are using incremental update, you should manually call [Doc.Flatten](../../doc/1-methods/flatten.md) or [Page.Flatten](../../../6-abcpdf.objects/page/1-methods/flatten.md) on any pages you want compressed.
