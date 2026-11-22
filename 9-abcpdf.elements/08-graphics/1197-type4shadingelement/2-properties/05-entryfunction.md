# EntryFunction Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FunctionElement`](../../../07-syntax/1101-functionelement/index.md)`>` | null | No | Represents the "Function" entry of the type 4 shading dictionary object. |

## Notes

Represents the "Function" entry of the type 4 shading dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FunctionElements](../../../07-syntax/1101-functionelement/index.md).

If you read the specification you will see that an array of one [FunctionElement](../../../07-syntax/1101-functionelement/index.md) may be represented as a single [FunctionElement](../../../07-syntax/1101-functionelement/index.md) rather than an array. However we always present this property as an array to simplify the interface. It is only if you add or remove items in the array, that the underlying representation will be changed.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 82, page 190.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=198)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 81, page 237.](https://www.iso.org/standard/63534.html)

When present, the Function entry replaces the per-vertex color components with a single tint value per vertex. The function converts that scalar tint to full color component values in the shading's color space.

When this entry is present, each vertex carries exactly one component value (the tint) instead of the full set of components required by the color space.
