# EntryCIDSystemInfo Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`CIDSystemInfoElement`](../../1276-cidsysteminfoelement/index.md) | null | No | Represents the "CIDSystemInfo" entry of the cidfont dictionary object. |

## Notes

Represents the "CIDSystemInfo" entry of the cidfont dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains a [CIDSystemInfoElement](../../1276-cidsysteminfoelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 117, page 269.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=277)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 115, page 327.](https://www.iso.org/standard/63534.html)

The Registry and Ordering values here must match those of the CMap used in the parent type 0 font. The Supplement here must be greater than or equal to the CMap supplement.

This entry is a direct dictionary object, not an indirect reference.
