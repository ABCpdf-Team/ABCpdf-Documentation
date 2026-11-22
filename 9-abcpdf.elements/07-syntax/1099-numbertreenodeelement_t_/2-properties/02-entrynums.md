# EntryNums Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`Element`](../../../01-base/1086-element/index.md)`>` | null | No | This property represents the "Nums" entry of the number tree node dictionary object. |

## Notes

This property represents the "Nums" entry of the number tree node dictionary object.

It is defined as part of the PDF 1.0 specification.

An Array containing alternate keys and values. For this reason the number of items in they array is always a multiple of two.

So to find the 10th key and value you would use a zero based index of 20 and 21 respectively.

The pairs in this array should be sorted in ascending order by key value.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 37, page 91.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=99)

The Nums array in a leaf number tree node holds alternating integer keys and their associated values in ascending numeric order. The array length must be even.
