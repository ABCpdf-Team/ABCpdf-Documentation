# EntryIndex Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<int>` | null | No | Represents the "Index" entry of the cross-reference stream dictionary object. |

## Notes

Represents the "Index" entry of the cross-reference stream dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains integers, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 17, page 50.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=58)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 17, page 65.](https://www.iso.org/standard/63534.html)

The Index entry is an array of pairs specifying which object numbers this cross-reference stream covers. Each pair gives a starting object number and a count. Entries in the stream body appear in the same order as the ranges specified by Index.

When Index is absent, the stream is treated as covering all objects from 0 to Size minus 1. An explicit Index allows a stream to cover a non-contiguous range of object numbers.
