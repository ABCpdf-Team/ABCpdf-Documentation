# EntryEncode Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "Encode" entry of the type 0 function dictionary object. |

## Notes

Represents the "Encode" entry of the type 0 function dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 39, page 94.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=102)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 39, page 124.](https://www.iso.org/standard/63534.html)

The Encode array maps each input dimension's domain range to the corresponding sample index range. It contains pairs of values: the sample index at the domain minimum and the sample index at the domain maximum for each dimension.
