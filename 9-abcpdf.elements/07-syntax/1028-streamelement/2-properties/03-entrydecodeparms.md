# EntryDecodeParms Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`ParameterElement`](../../0012-parameterelement/index.md)`>` | null | No | Represents the "DecodeParms" entry of the stream object. |

## Notes

Represents the "DecodeParms" entry of the stream object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [ParameterElements](../../0012-parameterelement/index.md).

If you read the specification you will see that an array of one [ParameterElement](../../0012-parameterelement/index.md) may be represented as a single [ParameterElement](../../0012-parameterelement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 5, page 20.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=28)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 5, page 32.](https://www.iso.org/standard/63534.html)

The DecodeParms entry holds the parameters for the filter or filters named in Filter. For a single filter it is a dictionary; for multiple filters it is an array with one entry per filter, where null indicates a filter that takes no parameters.
