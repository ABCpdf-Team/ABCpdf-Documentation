# EntryC1 Property

| Type | Default Value | Read Only | Description |
| --- | --- | --- | --- |
| `IList<double>` | null | No | Represents the "C1" entry of the type 2 function dictionary object. |

## Notes

Represents the "C1" entry of the type 2 function dictionary object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an array which contains doubles, representing PDF numeric objects.

For definitive details see:.

[The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 40, page 96.](https://opensource.adobe.com/dc-acrobat-sdk-docs/standards/pdfstandards/pdf/PDF32000_2008.pdf#page=104)

[The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 40, page 126.](https://www.iso.org/standard/63534.html)

The C1 array gives the output values when the input is 1. It has one element per output component. When absent, all components default to 1.
