# EntryFunctions Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| [`ArrayElement`](../../../01-base/0001-arrayelement_t_/index.md)`<`[`FunctionElement`](../../1101-functionelement/index.md)`>` | null | No | Represents the "Functions" entry of the type 3 function dictionary object. |

## Notes

Represents the "Functions" entry of the type 3 function dictionary object.

It is a required entry defined as part of the PDF 1.0 specification.

It contains an array which contains [FunctionElements](../../1101-functionelement/index.md).

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 41, page 97.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=105)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 41, page 127.](https://www.iso.org/standard/63534.html)

The Functions array holds the sub-functions that make up the stitched function. Each sub-function is applied to a contiguous subdomain. The array has one more element than the Bounds array.
